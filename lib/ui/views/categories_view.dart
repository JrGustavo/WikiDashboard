import 'package:admin_dashboard/datatables/categories_datasource.dart';
import 'package:admin_dashboard/providers/categories_provider.dart';
import 'package:admin_dashboard/ui/modals/category_modal.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:provider/provider.dart';

import '../buttons/custom_button_icon.dart';


class CategoriesView extends StatefulWidget {

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  void initState() {
  super.initState();

  Provider.of<CategoriesProvider>(context, listen: false).getCategories();
  }

  @override
  Widget build(BuildContext context) {

    final categorias = Provider.of<CategoriesProvider>(context).categorias;

    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Text('Categorias', style: CustomLabels.h1 ),

          SizedBox( height: 10 ),


          PaginatedDataTable(
            columns: [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Categorias')),
              DataColumn(label: Text('Creado por ')),
              DataColumn(label: Text('Acciones')),
            ],
            source: CategoriesDTS(categorias, context),
            header:  Text('Categorias disponibles', maxLines: 2),
            onRowsPerPageChanged: ( value) {
              setState(() {
                _rowsPerPage = value ?? 10;
              });
            },
            rowsPerPage: _rowsPerPage,
            actions: [
              CustomButtonIcon(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                   context: context,
                   builder: ( _ ) => CategoryModal(categoria:null)
                  );
                },
                text: 'Crear',
                icon: Icons.add_outlined
              )
            ],
          ),
        ],
      ),
    );
  }
}


