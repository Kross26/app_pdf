import 'package:flutter/material.dart';

class RowItemPremium extends StatelessWidget {
  const RowItemPremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: ListTile(
          leading: const Icon(Icons.star_border_outlined),
          title: const Text('Obtener Premium'),
          subtitle: const Text('Acceso a premium'),
          onTap: () {},
          trailing: const Icon(Icons.arrow_forward_outlined),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
