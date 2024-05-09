import 'package:flutter/material.dart';

class RowItemCuentaSwitch extends StatefulWidget {
  final Switch? trailingSwitch;
  const RowItemCuentaSwitch({
    super.key,
    this.trailingSwitch,
  });

  @override
  State<RowItemCuentaSwitch> createState() => _RowItemCuentaSwitchState();
}

class _RowItemCuentaSwitchState extends State<RowItemCuentaSwitch> {
  final bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Switch(
      value: _isSelected,
      onChanged: (newValue) {},
    );
  }
}
