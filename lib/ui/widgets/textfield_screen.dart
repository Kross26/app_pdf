import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import '../screens.dart';

class TextFieldScreen extends StatefulWidget {
  final Place? place;

  const TextFieldScreen({super.key, this.place});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
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
          'Generate label',
          style: TextStyle(
            fontSize: screenWidht * 0.05,
            fontWeight: FontWeight.w400,
            fontFamily: 'BebasNeue',
          ),
        ),
        backgroundColor: const Color.fromRGBO(148, 148, 148, 1),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            //
            Container(
              // margin: const EdgeInsets.all(20),
              width: screenWidht * 0.9,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.black), // Opcional: agrega un borde negro
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                    textFieldValue,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            //
            Text('You selected: ${widget.place.toString().split('.').last}'),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Enter a ${widget.place.toString().split('.').last}',
              ),
              onChanged: (value) {
                setState(() {
                  textFieldValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
