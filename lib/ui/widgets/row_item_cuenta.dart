import 'package:flutter/material.dart';

class RowItemCuenta extends StatelessWidget {
  final IconData icon;
  const RowItemCuenta({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: screenHeight * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: screenWidht * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
