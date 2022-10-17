import 'package:admin_dashboard/models/categoria.dart';
import 'package:admin_dashboard/providers/categories_provider.dart';
import 'package:admin_dashboard/ui/modals/category_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CategoriesDTS extends DataTableSource {

  final List<Categoria> categorias;
  final BuildContext context;

  CategoriesDTS(this.categorias, this.context);


  @override
  DataRow getRow(int index) {


    
    var category;
    return DataRow.byIndex(
      index: index,
    cells: [
      DataCell(Text(  category.id)),
      DataCell(Text(  category.nombre)),
      DataCell(Text(  category.usuario.nombre)),
      DataCell(
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit_outlined),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                   builder: ( _ ) => CategoryModal()
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete_outline, color: Colors.red.withOpacity(0.5),),
              onPressed: () {
              final dialog = AlertDialog(
              title: Text('¿ESta seguro de borrarlo?'),
                content: Text('Borrar definitivamente'),
                actions: [
                  TextButton(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Si,Borrar'),
                    onPressed: () async {
                      await Provider.of<CategoriesProvider>(context, listen: false)
                      .deleteCategory('');
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );

              showDialog(
                barrierColor: Colors.transparent,
                  context: context,
                  builder: ( _ ) =>  dialog);
              },
            ),
          ],
        )
      )
    ]
    );
    

  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => categorias.length;

  @override
  int get selectedRowCount => 0;

}

