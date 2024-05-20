import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ArchivesView extends StatelessWidget {
  const ArchivesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(172, 226, 225, 100),
      body: Center(
        child: ElevatedButton(
          child: const Text('Solicitar permiso'),
          onPressed: () async {
            PermissionStatus status = await Permission.storage.request();
            if (status.isGranted) {
              // el permiso fue otorgado, puedes leer archivos PDF aquí
              print('Permiso otorgado');
            } else {
              // el permiso no fue otorgado
              // se muestra un mensaje al usuario o realizar alguna acción adicional
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Permiso no otorgado'),
                  content: const Text(
                      'Para leer archivos, por favor otorga el permiso de almacenamiento.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
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
