import 'package:app_pdf/ui/widgets/rowsConfiguration/row_item_cuenta.dart';
import 'package:app_pdf/ui/widgets/rowsConfiguration/row_item_general.dart';
import 'package:flutter/material.dart';
import '../../screens.dart';

class ConfigurationView extends StatefulWidget {
  const ConfigurationView({super.key});

  @override
  State<ConfigurationView> createState() => _ConfigurationViewState();
}

class _ConfigurationViewState extends State<ConfigurationView> {
  // bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: const [
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Premium'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemPremium(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('Cuenta'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemCuenta(
                iconCuenta: Icon(Icons.account_circle_outlined),
                titleCuenta: Text('Licencia'),
                trailing: Text('Gratuita'),
                trailingSwitch: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemCuenta(
                iconCuenta: Icon(Icons.account_circle_outlined),
                titleCuenta: Text('Documentos Restantes'),
                trailing: Text('0 de 3'),
                trailingSwitch: null,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemCuenta(
                iconCuenta: Icon(Icons.account_circle_outlined),
                titleCuenta: Text('Desbloqueo con Huella'),
                trailing: Text('Premium'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('General'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemGeneral(
                iconCuenta: Icon(Icons.refresh_outlined),
                titleCuenta: Text('Suscripcíon'),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemGeneral(
                iconCuenta: Icon(Icons.attach_money_outlined),
                titleCuenta: Text('Administrar Suscripciones'),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemGeneral(
                iconCuenta: Icon(Icons.question_mark_outlined),
                titleCuenta: Text('Preguntas más frecuentes'),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemGeneral(
                iconCuenta: Icon(Icons.chat_bubble_outline_outlined),
                titleCuenta: Text('Contactar al Soporte'),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: RowItemGeneral(
                iconCuenta: Icon(Icons.info_outline),
                titleCuenta: Text('Informar de un error'),
                trailing: Icon(Icons.arrow_forward_outlined),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
