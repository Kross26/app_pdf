import 'package:flutter/material.dart';

class RowItemCuenta extends StatelessWidget {
  final IconData icon;
  const RowItemCuenta({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      // height: screenHeight * 0.2,
      child: Row(
        children: [
          Icon(icon),
          // SizedBox(width: screenWidht * 0.03),
        ],
      ),
    );
  }
}
