import 'package:flutter/material.dart';

class RowItemGeneral extends StatelessWidget {
  final Icon iconCuenta;
  final Text titleCuenta;
  final Icon trailing;
  const RowItemGeneral({
    super.key,
    required this.iconCuenta,
    required this.titleCuenta,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
        leading: iconCuenta,
        title: titleCuenta,
        onTap: () {},
        trailing: trailing,
        tileColor: Colors.white,
      ),
    );
  }
}
