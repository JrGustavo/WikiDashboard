import 'package:flutter/material.dart';

import '';


class CustomButtonIcon extends StatelessWidget {

final Function onPressed;
final String text;
final Color color;
final bool isField;
final IconData icon;

CustomButtonIcon({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = Colors.indigo,
    this.isField = false,
    required this.icon
}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(StadiumBorder()),
        backgroundColor: MaterialStateProperty.all(Colors.indigo.withOpacity(0.5)),
        overlayColor: MaterialStateProperty.all(Colors.indigo.withOpacity(0.3)),
      ),
      onPressed: () => onPressed(),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          Text(text, style: TextStyle(color: Colors.white), )
        ],
      ),

    );
  }
}
