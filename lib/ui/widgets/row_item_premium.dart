import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconData icon2;
  final String subtitle;

  const RowItem({
    super.key,
    required this.icon,
    required this.title,
    required this.icon2,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight * 0.6,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: screenWidht * 0.08),
            Text(
              title,
              style: TextStyle(fontSize: screenHeight * 0.019),
            ),
            SizedBox(width: screenWidht * 0.4),
            Icon(icon2),
            Column(
              children: [
                Text(
                  subtitle,
                  style: TextStyle(fontSize: screenHeight * 0.014),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
