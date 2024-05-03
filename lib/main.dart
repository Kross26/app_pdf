import 'package:app_pdf/ui/routes/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'App_PDF',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
