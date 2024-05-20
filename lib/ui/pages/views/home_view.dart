import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(172, 226, 225, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            // height: screenHeight * 0.17,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screenWidht * 0.15,
                      height: screenHeight * 0.03,
                      child: Text(
                        'CONVERTIR',
                        style: TextStyle(
                          fontSize: screenWidht * 0.04,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'BebasNeue',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/crear.png',
                                    width: screenWidht * 0.15,
                                  ),
                                ),
                                Text(
                                  'TEXTO A PDF',
                                  style:
                                      TextStyle(fontSize: screenWidht * 0.03),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => context.go('/imagetopdf_screen'),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/crear.png',
                                    width: screenWidht * 0.15,
                                  ),
                                ),
                                Text(
                                  'IMAGEN A PDF',
                                  style:
                                      TextStyle(fontSize: screenWidht * 0.03),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: screenWidht * 0.25,
                      height: screenHeight * 0.03,
                      child: Text(
                        'GENERAR ETIQUETA',
                        style: TextStyle(
                          fontSize: screenWidht * 0.04,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'BebasNeue',
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => context.go('/invoice_screen'),
                        child: Card(
                          elevation: 5,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/crear.png',
                                    width: screenWidht * 0.15,
                                  ),
                                ),
                                Text(
                                  'GENERAR ETIQUETA AUTO',
                                  style:
                                      TextStyle(fontSize: screenWidht * 0.03),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
