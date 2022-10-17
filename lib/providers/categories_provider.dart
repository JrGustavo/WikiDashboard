import 'package:admin_dashboard/api/WikiApi.dart';
import 'package:admin_dashboard/models/categoria.dart';
import 'package:admin_dashboard/models/http/categories_response.dart';
import 'package:flutter/cupertino.dart';


class CategoriesProvider extends ChangeNotifier {

  List <Categoria>categorias = [];

  getCategories () async {
    final resp = await WikiApi.httpGet('/get-categories');
    final categoriesResp = CategoriesResponse.fromMap(resp);

    this.categorias = [...categoriesResp.categorias];

    print( this.categorias );

    notifyListeners();
  }

  Future newCategory(String name) async {

    final data = {
      'nombre': name
    };

    try {

      final json = await WikiApi.post('/categorias', data );
      final newCategory = Categoria.fromMap(json);

      categorias.add( newCategory );
      notifyListeners();

    } catch (e) {
      throw 'Error al crear categoria';
    }

  }

  Future updateCategory( String id, String name ) async {

    final data = {
      'nombre': name
    };

    try {

      await WikiApi.put('/categorias/$id', data );

      this.categorias = this.categorias.map(
              (category) {
            if ( category.id != id ) return category;
            category.nombre = name;
            return category;
          }
      ).toList();

      notifyListeners();

    } catch (e) {
      throw 'Error al crear categoria';
    }

  }

  Future deleteCategory( String id ) async {

    try {

      await WikiApi.delete('/categorias/$id', {} );

      categorias.removeWhere((categoria) => categoria.id == id );

      notifyListeners();


    } catch (e) {
      print(e);
      print('Error al crear categoria');
    }

  }

}