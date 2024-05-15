import 'package:flutter/material.dart';

// se define un enumerador con 3 opciones
enum ChangeItem { selected }

class InvoiceForm extends StatefulWidget {
  const InvoiceForm({super.key});

  @override
  State<InvoiceForm> createState() => _InvoiceFormState();
}

class _InvoiceFormState extends State<InvoiceForm> {
  ChangeItem? _item = ChangeItem.selected;
  Color activeColor = const Color.fromRGBO(211, 211, 211, 1);

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // color del background
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            // texto que se muestra al principio de la pantalla
            child: Text(
              'Selecciona una opción',
              style: TextStyle(fontSize: screenWidht * 0.045),
            ),
          ),
          SizedBox(height: screenHeight * 0.025),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  // height: screenHeight * 0.05,
                  // width: screenWidht * 0.8,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: RadioListTile(
                    title: const Text('Patente'),
                    value: ChangeItem.selected,
                    groupValue: _item,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        _item = value;
                      });
                    },
                    // color al ser seleccionado
                    activeColor: activeColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  // height: screenHeight * 0.05,
                  // width: screenWidht * 0.8,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: RadioListTile(
                    title: const Text('Marca'),
                    value: ChangeItem.selected,
                    groupValue: _item,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        _item = value;
                      });
                    },
                    activeColor: activeColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  // height: screenHeight * 0.05,
                  // width: screenWidht * 0.8,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: RadioListTile(
                    title: const Text('Chasis'),
                    value: ChangeItem.selected,
                    groupValue: _item,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        _item = value;
                      });
                    },
                    activeColor: activeColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.015),
          ElevatedButton(
            onPressed: () {
              // Imprimir los ítems seleccionados
              // print('Ítems seleccionados: $selectedItems');
            },
            child: Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
