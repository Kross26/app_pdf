import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const FloatingButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  // double screenWidht = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromRGBO(148, 148, 148, 1),
      child: const Icon(
        Icons.archive_rounded,
        color: Colors.white,
      ),
    );
  }
}
