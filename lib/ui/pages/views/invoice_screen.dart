import 'package:app_pdf/ui/widgets/invoiceForm/invoice_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'factura pdf',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.go('/'),
              icon: const Icon(Icons.arrow_back_outlined)),
          title: Text(
            'Generate Invoice',
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
        body: InvoiceForm(),
      ),
    );
  }
}
