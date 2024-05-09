import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ArchivesView extends StatelessWidget {
  const ArchivesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(211, 211, 211, 1),
      body: Center(
        child: ElevatedButton(
          child: const Text('Solicitar permiso'),
          onPressed: () async {
            final status = await Permission.storage.request();
            if (status.isGranted) {
              // El permiso fue otorgado, puedes leer archivos PDF aquí
              // por ejemplo, utilizando el paquete pdf_flutter o similar
              print('Permiso otorgado');
            } else {
              // El permiso no fue otorgado
              // Puedes mostrar un mensaje al usuario o realizar alguna acción adicional
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Permiso no otorgado'),
                  content: Text(
                      'Para leer archivos, por favor otorga el permiso de almacenamiento.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
