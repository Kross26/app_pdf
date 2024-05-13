import 'package:app_pdf/ui/widgets/flatingButtom/floating_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingButton(
        onPressed: () {},
        icon: Icons.archive,
      ),
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            // height: screenHeight * 0.17,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: screenWidht * 0.10,
                      height: screenHeight * 0.03,
                      child: Text(
                        'CREAR',
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
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //
                //
                //
                //
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
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        elevation: 10,
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
                                'Crear pdf',
                                style: TextStyle(fontSize: screenWidht * 0.03),
                              ),
                            ],
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
