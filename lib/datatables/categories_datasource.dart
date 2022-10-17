import 'package:flutter/material.dart';


class CategoriesDTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    
    return DataRow.byIndex(
      index: index,
    cells: [
      DataCell(Text('Cell No.1  index:$index'), onTap: (){print('cell 1'); }),
      DataCell(Text('Cell No.2  index:$index')),
      DataCell(Text('Cell No.3  index:$index')),
      DataCell(Text('Cell No.4  index:$index')),
    ]
    );
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 1000;

  @override
  int get selectedRowCount => 0;

}

