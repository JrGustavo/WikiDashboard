import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 20 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'wikibusco2.png',
            width: 50,
            height: 50,
          ),

          SizedBox( height: 20 ),

          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Wiki Dashboard',
              style: GoogleFonts.montserrat(
                fontSize: 60,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}