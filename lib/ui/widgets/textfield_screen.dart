import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
// import 'package:go_router/go_router.dart';
import '../screens.dart';

class TextFieldScreen extends StatefulWidget {
  final Place? place;

  const TextFieldScreen({super.key, this.place});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  // se guarda variable
  String textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InvoiceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        title: Text(
          'Generador Etiqueta',
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
      backgroundColor: const Color.fromRGBO(172, 226, 225, 100),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            //
            Container(
              width: screenWidht * 0.9,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    textFieldValue.toUpperCase(),
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            //
            Text('Selecionaste ${widget.place.toString().split('.').last}'),
            TextField(
              decoration: InputDecoration(
                // fillColor: Colors.red,
                // hoverColor: Colors.red,
                border: const OutlineInputBorder(),
                hintText: 'Ingresa ${widget.place.toString().split('.').last}',
              ),
              onChanged: (value) {
                setState(() {
                  textFieldValue = value;
                });
              },
            ),
            SizedBox(height: screenHeight * 0.02),
            ElevatedButton(
              onPressed: () {
                _printPdf();
              },
              child: const Text('Save to PDF'),
            )
          ],
        ),
      ),
    );
  }

  // function pdf
  Future<void> _printPdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
            margin: const pw.EdgeInsets.all(20),
            padding: const pw.EdgeInsets.all(100),
            // color: const PdfColor.fromInt(0xff0000ff),
            // Usa PdfColor.fromInt para definir un color
            // se le pasa la variable del textfield
            child: pw.Text(textFieldValue.toUpperCase(),
                style:
                    const pw.TextStyle(color: PdfColors.black, fontSize: 30)),
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
