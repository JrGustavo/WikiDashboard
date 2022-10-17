import 'package:admin_dashboard/datatables/banners_datasource.dart';
import 'package:admin_dashboard/providers/banners_provider.dart';
import 'package:admin_dashboard/ui/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:provider/provider.dart';

class BannersView extends StatefulWidget {

  @override
  State<BannersView> createState() => _BannersViewState();
}

class _BannersViewState extends State<BannersView> {

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState(){
    super.initState();

    Provider.of<BannerProvider>(context, listen: false).getBanners();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Banners', style: CustomLabels.h1 ),

          SizedBox( height: 10 ),

          PaginatedDataTable(
                columns: [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Banner')),
                  DataColumn(label: Text('Creado por')),
                  DataColumn(label: Text('Acciones')),
                ],
                source: BannersDTS(),
                header: Text('Banners disponibles', maxLines: 2),
                onRowsPerPageChanged: (value) {
                  _rowsPerPage = value ?? 10;
                },
                rowsPerPage: _rowsPerPage,
                actions: [
              CustomIconButtom(
                onPressed: () {},
                text: 'Crear',
                icon: Icons.add_outlined
                )
            ],
              )

       ],
    ),
    );
  }
}

