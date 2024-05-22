import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:io';

class ImageToPdfScreen extends StatefulWidget {
  const ImageToPdfScreen({super.key});

  @override
  State<ImageToPdfScreen> createState() => _ImageToPdfScreenState();
}

class _ImageToPdfScreenState extends State<ImageToPdfScreen> {
  File? _image;
  bool _showGif = false;
  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.arrow_back_outlined)),
        title: Text(
          'Imagen a PDF',
          style: TextStyle(
            fontSize: screenWidht * 0.05,
            fontWeight: FontWeight.w400,
            fontFamily: 'BebasNeue',
          ),
        ),
        backgroundColor: const Color.fromARGB(106, 0, 166, 255),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: _image == null
                  ? const Text(
                      'Seleciona una imagen',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  : Image.file(
                      _image!,
                      width: screenWidht * 0.8,
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Elige una imagen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertImageToPdf,
              child: const Text('Convertir a PDF'),
            ),
          ],
        ),
      ),
    );
  }

  // Funcion para seleccionar una imagen de la galería y actualizar el estado.
  Future<void> _pickImage() async {
    // Define la variable, se utiliza para interactuar con la galería de imágenes del dispositivo.
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    // Verifica si pickedFile no es null, lo que significa que el usuario ha seleccionado una imagen.
    // Si pickedFile es null, significa que el usuario canceló la operación de selección de imagen.
    if (pickedFile != null) {
      // Actualiza la variable _image con un objeto File
      // Convierte la ruta de la imagen (pickedFile.path) en un objeto File
      setState(() {
        _image = File(pickedFile.path);
        _showGif = true;
      });
      // Hide the GIF after 3 seconds
      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _showGif = false;
        });
      });
    }
  }

  Future<void> _convertImageToPdf() async {
    // Verifica si hay una imagen seleccionada
    if (_image == null) return;
    // Crea un documento PDF
    final pdf = pw.Document();
    // Lee los bytes de la imagen seleccionada y los convierte a un objeto MemoryImage
    final image = pw.MemoryImage(_image!.readAsBytesSync());

    // Agrega una página al PDF con la imagen centrada
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Image(image),
          ); // Center
        },
      ),
    );
    // Usa Printing.layoutPdf para guardar o imprimir el PDF
    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
