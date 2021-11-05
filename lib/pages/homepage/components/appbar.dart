import 'package:flutter/material.dart';
import 'package:gakgoo/components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          const FlutterLogo(
            size: 36,
          ),
          /* Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ), */
          const SizedBox(width: 5),
          Text(
            "Gakgoo".toUpperCase(),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          MenuItem(
            title: "REZERVASYON",
            press: () {},
          ),
          MenuItem(
            title: "ARAÇLAR",
            press: () {},
          ),
          MenuItem(
            title: "HİZMETLER",
            press: () {},
          ),
          MenuItem(
            title: "OFİSLER",
            press: () {},
          ),
          MenuItem(
            title: "HAKKIMIZDA",
            press: () {},
          ),
          DefaultButton(
            text: "BİZE ULAŞIN",
            press: () {},
          ),
        ],
      ),
    );
  }
}
