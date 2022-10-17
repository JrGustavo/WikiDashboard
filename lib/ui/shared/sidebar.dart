import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:admin_dashboard/providers/sidemenu_provider.dart';

import 'package:admin_dashboard/router/router.dart';

import 'package:admin_dashboard/services/navigation_service.dart';

import 'package:admin_dashboard/ui/shared/widgets/menu.dart';
import 'package:admin_dashboard/ui/shared/widgets/logo.dart';
import 'package:admin_dashboard/ui/shared/widgets/text_separator.dart';


class Sidebar extends StatelessWidget {
 

  void navigateTo( String routeName ) {
    NavigationService.navigateTo( routeName );
    SideMenuProvider.closeMenu();
  }

  @override
  Widget build(BuildContext context) {

    final sideMenuProvider = Provider.of<SideMenuProvider>(context);

    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [

          Logo(),

          SizedBox( height: 50 ),

          TextSeparator( text: 'Principal' ),

          Menu(
            text: 'Parametros',
            icon: Icons.compass_calibration_outlined,
            onPressed: () => navigateTo( Flurorouter.dashboardRoute ),
            isActive: sideMenuProvider.currentPage == Flurorouter.dashboardRoute,
          ),

          Menu( text: 'Banners',
          icon: Icons.new_releases_outlined,
         onPressed: () => navigateTo(Flurorouter.bannersRoute),
         isActive: sideMenuProvider.currentPage == Flurorouter.bannersRoute,
         ),



          Menu( text: 'Perfiles', icon: Icons.show_chart_outlined, onPressed: (){}),
          Menu( text: 'Clasificados', icon: Icons.layers_outlined, onPressed: (){}),

          Menu( text: 'Categorias',
          icon: Icons.dashboard_outlined,
          onPressed: () => navigateTo(Flurorouter.categoriesRoute),
          isActive: sideMenuProvider.currentPage == Flurorouter.categoriesRoute,
          ),


          Menu( text: 'Versiones Pro', icon: Icons.attach_money_outlined, onPressed: (){}),
          Menu( text: 'Otros', icon: Icons.people_alt_outlined, onPressed: (){}),

          SizedBox( height: 30 ),

          TextSeparator( text: 'Marketing'),

          Menu(
            text: 'Activas',
            icon: Icons.list_alt_outlined, 
            onPressed: () => navigateTo( Flurorouter.iconsRoute ),
            isActive: sideMenuProvider.currentPage == Flurorouter.iconsRoute,
          ),

          Menu( text: 'Nuevas', icon: Icons.mark_email_read_outlined, onPressed: (){}),
          Menu( text: 'Campañas', icon: Icons.note_add_outlined, onPressed: (){}),
          Menu(
            text: 'Black', 
            icon: Icons.post_add_outlined, 
            onPressed: () => navigateTo( Flurorouter.blankRoute ),
            isActive: sideMenuProvider.currentPage == Flurorouter.blankRoute,
          ),

          SizedBox( height: 50 ),
          TextSeparator( text: 'Exit' ),
          Menu( text: 'Salir', icon: Icons.exit_to_app_outlined, onPressed: (){}),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color( 0xff444444 ),
        Color( 0xff444444 ),
      ]
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10
      )
    ]
  );
}

