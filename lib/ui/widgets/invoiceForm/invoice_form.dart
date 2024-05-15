import 'package:flutter/material.dart';

// se define un enumerador con 3 opciones
enum ChangeItem { patente, marca, chasis }

// final SelectedItem = _selectedItem;

class InvoiceForm extends StatefulWidget {
  const InvoiceForm({super.key});

  @override
  State<InvoiceForm> createState() => _InvoiceFormState();
}

class _InvoiceFormState extends State<InvoiceForm> {
  // ChangeItem? _item;
  ChangeItem? _patente;
  ChangeItem? _marca;
  ChangeItem? _chasis;
  ChangeItem? selected;

  Color activeColor = const Color.fromRGBO(211, 211, 211, 1);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // bool isSelected = ;
    // List<ChangeItem> selectedItems = [];
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
              style: TextStyle(fontSize: screenWidth * 0.045),
            ),
          ),
          SizedBox(height: screenHeight * 0.025),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: RadioListTile<ChangeItem?>(
                    title: const Text('Patente'),
                    value: selected,
                    groupValue: _patente,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        if (selected == value) {
                          selected =
                              null; // Desmarca el elemento si se selecciona de nuevo
                        } else {
                          selected = value; // Marca el elemento seleccionado
                        }
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: RadioListTile(
                    title: const Text('Marca'),
                    value: ChangeItem.marca,
                    groupValue: selected,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        selected = value;
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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: RadioListTile<ChangeItem?>(
                    title: const Text('Chasis'),
                    value: selected,
                    // guarda el valor del grupo, ej: patente, marca chasis
                    groupValue: selected,
                    onChanged: (ChangeItem? value) {
                      setState(() {
                        selected = value;
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
              print('Ítems seleccionados: $selected');
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
