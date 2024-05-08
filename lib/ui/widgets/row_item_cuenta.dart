import 'package:flutter/material.dart';

class RowItemCuenta extends StatelessWidget {
  final Icon iconCuenta;
  final Text titleCuenta;
  final Text? trailing;
  final Switch? trailingSwitch;
  final Divider? divider;
  const RowItemCuenta({
    super.key,
    required this.iconCuenta,
    required this.titleCuenta,
    this.trailing,
    this.divider,
    this.trailingSwitch,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: iconCuenta,
          title: titleCuenta,
          onTap: () {},
          trailing: trailing,
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
