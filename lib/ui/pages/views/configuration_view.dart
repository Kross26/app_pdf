import 'package:app_pdf/ui/widgets/row_item_cuenta.dart';
import 'package:flutter/material.dart';

import '../../screens.dart';

class ConfigurationView extends StatelessWidget {
  const ConfigurationView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: screenWidht * 0.14,
                    height: screenHeight * 0.03,
                    child: Text(
                      'PREMIUM',
                      style: TextStyle(
                        fontSize: screenWidht * 0.04,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Column(
                children: [
                  Container(
                    height: screenHeight * 0.10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                    child: const RowItemPremium(
                      icon: Icons.star,
                      title: 'Obtener Premium',
                      icon2: Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.007),
              Row(
                children: [
                  SizedBox(
                    width: screenWidht * 0.15,
                    height: screenHeight * 0.03,
                    child: Text(
                      'CUENTA',
                      style: TextStyle(
                        fontSize: screenWidht * 0.04,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.person_2_outlined,
                    ),
                    const Text(
                      'Licencia',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.4),
                    const Row(
                      children: [Text('Gratuita')],
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.person_2_outlined,
                    ),
                    const Text(
                      'Documentos Restantes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.16),
                    const Row(
                      children: [Text('0 de 3')],
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.person_2_outlined,
                    ),
                    const Text(
                      'Bloqueo Huella',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.26),
                    const Row(
                      children: [Text('Premium')],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.007),
              Row(
                children: [
                  SizedBox(
                    width: screenWidht * 0.15,
                    height: screenHeight * 0.03,
                    child: Text(
                      'GENERAL',
                      style: TextStyle(
                        fontSize: screenWidht * 0.04,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.sync,
                    ),
                    const Text(
                      'Suscripción',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.424),
                    const Row(
                      children: [
                        Icon(Icons.arrow_forward),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.person_2_outlined,
                    ),
                    const Text(
                      'Administar Suscripciones',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.17),
                    const Row(
                      children: [
                        Icon(Icons.arrow_forward),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: screenHeight * 0.07,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.white),
                child: Row(
                  children: [
                    const RowItemCuenta(
                      icon: Icons.folder,
                    ),
                    const Text(
                      'Preguntas más frecuentes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screenWidht * 0.16),
                    const Row(
                      children: [
                        Icon(Icons.arrow_forward),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.007),
              //
              //
              //
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
