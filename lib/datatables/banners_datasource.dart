import 'package:flutter/material.dart';

class BannersDTS extends DataTableSource {
  @override
  DataRow getRow(int index) {
  return   DataRow.byIndex(
    index: index,
  cells: [
    DataCell(Text('Cell 1 index:$index')),
    DataCell(Text('Cell 1 index:$index')),
    DataCell(Text('Cell 1 index:$index')),
    DataCell(Text('Cell 1 index:$index')),

  ]

  );

  }

  @override

  bool get isRowCountApproximate => false;

  @override

  int get rowCount => 1000;

  @override

  int get selectedRowCount => 0;

  
}