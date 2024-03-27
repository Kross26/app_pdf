import 'package:app_pdf/ui/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen'; // const para usar con gorouter

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingButton(
          onPressed: () {},
          icon: Icons.archive,
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'PDF APP',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 5,
          shadowColor: Colors.black,
        ));
  }
}
