import 'package:flutter/material.dart';
import '../../screens.dart';

class InvoiceForm extends StatefulWidget {
  const InvoiceForm({super.key});

  @override
  State<InvoiceForm> createState() => _InvoiceFormState();
}

enum Place { patente, marca, chasis }

class _InvoiceFormState extends State<InvoiceForm> {
  Place? _place;
  bool _homeFieldVisible = false;

  void handleSelection(Place? value) {
    setState(() {
      _place = value;
      _homeFieldVisible = value == Place.marca;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(172, 226, 225, 100),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Seleciona una opción',
                          style: TextStyle(fontSize: screenWidht * 0.06),
                        ),
                      ),
                      RadioListTile(
                        title: const Text('Patente'),
                        value: Place.patente,
                        groupValue: _place,
                        onChanged: handleSelection,
                      ),
                      RadioListTile(
                        title: const Text('Marca'),
                        value: Place.marca,
                        groupValue: _place,
                        onChanged: handleSelection,
                      ),
                      RadioListTile(
                        title: const Text('Chasis'),
                        value: Place.chasis,
                        groupValue: _place,
                        onChanged: handleSelection,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton(
                  onPressed: () {
                    if (_place == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Por favor seleciona una opción.'),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextFieldScreen(place: _place!),
                        ),
                      );
                    }
                  },
                  child: const Text('Continue'),
                ),
              ],
            )),
      ),
    );
  }
}
