import 'package:admin_dashboard/api/WikiApi.dart';
import 'package:admin_dashboard/models/categoria.dart';
import 'package:flutter/cupertino.dart';

class CategoriesProvider extends ChangeNotifier {

  List categorias = [];

  getCategories () async {
    final resp = await WikiApi.httpGet('/get-categories');
    final categoriesResp = CategoriesResponse.fromMap(resp);

  this.categorias = [...categoriesResp.categorias];
  notifyListeners();
  }



}
