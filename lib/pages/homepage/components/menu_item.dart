import 'package:flutter/material.dart';
import 'package:gakgoo/constants.dart';

class MenuItem extends StatelessWidget {
  final String? title;
  final Function()? press;
  const MenuItem({
    Key? key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title!.toUpperCase(),
          style: TextStyle(
            color: kTextcolor.withOpacity(0.7),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
