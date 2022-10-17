import 'package:flutter/material.dart';

class BackgroundTwitter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Container(
        constraints: BoxConstraints( maxWidth: 400 ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Image(
              image: AssetImage('wikibusco2.png'),
              width: 400,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('wikibusco.png'),
          fit: BoxFit.cover
        )
    );
  }
}

