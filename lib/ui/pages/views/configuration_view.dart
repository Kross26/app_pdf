import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../screens.dart';

class ConfigurationView extends StatelessWidget {
  const ConfigurationView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(211, 211, 211, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: screenWidht * 0.14,
                  height: screenHeight * 0.02,
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
            SizedBox(height: screenHeight * 0.007),
            Column(
              children: [
                Container(
                  height: screenHeight * 0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: RowItem(
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
                  height: screenHeight * 0.02,
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
            //
            //
            //
            //
            //
          ],
        ),
      ),
    );
  }
}
