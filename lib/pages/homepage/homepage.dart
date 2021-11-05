import 'package:flutter/material.dart';
import 'package:gakgoo/pages/homepage/components/appbar.dart';
import 'package:gakgoo/pages/homepage/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scrollbar(
          isAlwaysShown: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                SizedBox(),
                const Body(),
                SizedBox(),
                // it will cover 2/3 of free spaces
              ],
            ),
          ),
        ),
      ),
    );
  }
}
