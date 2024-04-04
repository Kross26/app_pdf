import 'package:flutter/material.dart';

class RowItemPremium extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconData icon2;

  const RowItemPremium({
    super.key,
    required this.icon,
    required this.title,
    required this.icon2,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: screenHeight * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: screenWidht * 0.06),
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * 0.019,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Acceso a premium',
                        textAlign: TextAlign.left,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(width: screenWidht * 0.3),
              Icon(icon2),
            ],
          ),
        ),
      ),
    );
  }
}
