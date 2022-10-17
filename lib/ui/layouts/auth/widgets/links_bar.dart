import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      height: (size.width > 1000 ) ? size.height * 0.07 : null,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          LinkText( text: 'Marketing', onPressed: () => print('about') ),
          LinkText( text: 'Emprendimiento' ),
          LinkText( text: 'Tecnología' ),
          LinkText( text: 'Música' ),
          LinkText( text: 'Inmobiliario' ),
          LinkText( text: 'Salud' ),
          LinkText( text: 'Coaching' ),
          LinkText( text: 'Educación' ),
          LinkText( text: 'Ventas' ),
          LinkText( text: 'Turismo' ),
          LinkText( text: 'Vehículos' ),

        ],
      )
    );
  }
}