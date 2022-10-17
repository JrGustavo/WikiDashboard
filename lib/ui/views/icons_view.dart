import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:admin_dashboard/ui/cards/white_card.dart';

class IconsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Icons', style: CustomLabels.h1 ),

          SizedBox( height: 10 ),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: [

              WhiteCard(
                title: 'Nuevos usuarios',
                child: Center( child: Icon( Icons.new_label) ),
                width: 170
              ),

              WhiteCard(
                title: 'Usuarios Premium',
                child: Center( child: Icon( Icons.money) ),
                width: 170
              ),

              WhiteCard(
                title: 'Mensajes',
                child: Center( child: Icon( Icons.access_time_rounded) ),
                width: 170
              ),

              WhiteCard(
                title: 'Archivados',
                child: Center( child: Icon( Icons.all_inbox_outlined) ),
                width: 170
              ),

              WhiteCard(
                title: 'Banners',
                child: Center( child: Icon( Icons.desktop_mac_sharp) ),
                width: 170
              ),

              WhiteCard(
                title: 'Actualizaciones',
                child: Center( child: Icon( Icons.keyboard_tab_rounded) ),
                width: 170
              ),

              WhiteCard(
                title: 'Ubicaciones',
                child: Center( child: Icon( Icons.not_listed_location) ),
                width: 170
              ),

            ],
          )


        ],
      ),
    );
  }
}