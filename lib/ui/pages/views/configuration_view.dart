import 'package:app_pdf/ui/widgets/row_item_cuenta.dart';
import 'package:flutter/material.dart';
import '../../screens.dart';

class ConfigurationView extends StatefulWidget {
  const ConfigurationView({super.key});

  @override
  State<ConfigurationView> createState() => _ConfigurationViewState();
}

class _ConfigurationViewState extends State<ConfigurationView> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: Column(
        children: [
          Text('Premium', style: TextStyle()),
          RowItemPremium(),
          Text('Cuenta'),
          RowItemCuenta(
            iconCuenta: Icon(Icons.account_circle_outlined),
            titleCuenta: Text('Licencia'),
            trailing: Text('Gratuita'),
            trailingSwitch: null,
          ),
          RowItemCuenta(
            iconCuenta: Icon(Icons.account_circle_outlined),
            titleCuenta: Text('Documentos Restantes'),
            trailing: Text('0 de 3'),
            trailingSwitch: null,
          ),
          RowItemCuenta(
            iconCuenta: Icon(Icons.account_circle_outlined),
            titleCuenta: Text('Desbloqueo con Huella'),
          ),
        ],
      ),
    );
  }
}
