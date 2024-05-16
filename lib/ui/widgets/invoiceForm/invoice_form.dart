import 'package:flutter/material.dart';

enum ChangeItem { patente, marca, chasis }

class InvoiceForm extends StatefulWidget {
  const InvoiceForm({super.key});

  @override
  State<InvoiceForm> createState() => _InvoiceFormState();
}

class _InvoiceFormState extends State<InvoiceForm> {
  
  List<ChangeItem> selectedItems = [];
  Color activeColor = Colors.white70;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Selecciona una opción',
              style: TextStyle(fontSize: screenWidth * 0.045),
            ),
          ),
          SizedBox(height: screenHeight * 0.025),
          buildRadioListTile(
            title: 'Patente',
            value: ChangeItem.patente,
          ),
          const SizedBox(height: 5),
          buildRadioListTile(
            title: 'Marca',
            value: ChangeItem.marca,
          ),
          const SizedBox(height: 5),
          buildRadioListTile(
            title: 'Chasis',
            value: ChangeItem.chasis,
          ),
          ElevatedButton(
            onPressed: () {
              // Imprimir los ítems seleccionados
              print('Ítems seleccionados: $selectedItems');
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }

  Widget buildRadioListTile({
    required String title,
    required ChangeItem value,
  }) {
    bool isSelected = selectedItems.contains(value);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color.fromRGBO(148, 148, 148, 1)
                  : Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: RadioListTile<ChangeItem>(
              title: Text(title),
              onChanged: (ChangeItem? value) {
                setState(() {
                  if (isSelected) {
                    selectedItems.remove(value);
                  } else {
                    selectedItems.add(ChangeItem);
                  }
                });
              },
              value: ChangeItem,
              groupValue: null,
            ),
          ),
        ),
      ],
    );
  }
}
