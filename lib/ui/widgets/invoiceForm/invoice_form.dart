import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Factura PDF',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Factura PDF'),
        ),
        body: InvoiceForm(),
      ),
    );
  }
}

class InvoiceForm extends StatefulWidget {
  @override
  _InvoiceFormState createState() => _InvoiceFormState();
}

class _InvoiceFormState extends State<InvoiceForm> {
  File? _image;

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _generatePdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Text('Factura'),
                pw.Text('Nombre del cliente: [obtener desde TextField]'),
                pw.Text('Producto: [obtener desde TextField]'),
                if (_image != null)
                  pw.Image(
                    pw.MemoryImage(
                      _image!.readAsBytesSync(),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );

    final String dir = (await getApplicationDocumentsDirectory()).path;
    final String path = '$dir/factura.pdf';
    final File file = File(path);
    await file.writeAsBytes(await pdf.save());

    OpenFile.open(path); // Abre el PDF después de generarlo
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nombre del cliente'),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(labelText: 'Producto'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _getImage,
            child: Text('Cargar imagen'),
          ),
          SizedBox(height: 16.0),
          if (_image != null)
            Image.file(
              _image!,
              height: 200,
            ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _generatePdf,
            child: Text('Generar PDF'),
          ),
        ],
      ),
    );
  }
}
