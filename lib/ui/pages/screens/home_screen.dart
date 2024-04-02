import 'package:app_pdf/ui/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String name = 'home_screen'; // const para usar con gorouter

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> pageNames = ['PDF APP', 'Archives', 'Configuration'];

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    final screens = [
      const HomeView(),
      const ArchivesView(),
      const ConfigurationView()
    ];
    return Scaffold(
      floatingActionButton: FloatingButton(
        onPressed: () {},
        icon: Icons.archive,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            pageNames[currentIndex],
            style: TextStyle(
              fontSize: screenWidht * 0.05,
              fontWeight: FontWeight.w400,
              fontFamily: 'BebasNeue',
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(148, 148, 148, 1),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(60),
              topLeft: Radius.circular(60),
            ),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 5)
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.widgets_outlined), label: 'Actions'),
              NavigationDestination(
                  icon: Icon(Icons.archive_outlined), label: 'Archives'),
              NavigationDestination(
                  icon: Icon(Icons.settings_outlined), label: 'Configuration'),
            ],
            indicatorColor: Colors.white54,
            backgroundColor: const Color.fromRGBO(148, 148, 148, 1),
            shadowColor: Colors.black,
            selectedIndex: currentIndex,
            // se llama cuando se seleciona una nueva pagina y actualiza "currentIndex" mostrando el titulo correspondiente
            onDestinationSelected: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
