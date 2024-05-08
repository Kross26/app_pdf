import 'package:flutter/material.dart';

class RowItemPremium extends StatelessWidget {
  const RowItemPremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidht = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: Icon(Icons.star_border_outlined),
          title: Text('Obtener Premium'),
          subtitle: Text('Acceso a premium'),
          onTap: () {},
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          tileColor: Colors.white,
        ),
      ),
    );
  }
}
