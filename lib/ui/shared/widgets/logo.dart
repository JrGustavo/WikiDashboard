import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( top: 30 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon( Icons.bubble_chart_outlined, color: Color(0xfffefd20) ),
          SizedBox( width: 10 ),
          Text(
            'WikiDashboard',
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}