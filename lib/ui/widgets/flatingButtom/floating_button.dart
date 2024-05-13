import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => context.go('/invoice_screen'),
                backgroundColor: const Color.fromRGBO(148, 148, 148, 1),
                child: const Icon(
                  Icons.archive_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
