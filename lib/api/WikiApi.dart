import 'package:admin_dashboard/services/local_storage.dart';
import 'package:dio/dio.dart';

class WikiApi {

  static Dio _dio = new Dio();

  static void configureDio(){


    _dio.options.baseUrl = 'https://wikibusco.com/controllers/public/api';

    _dio.options.headers = {

      'token': LocalStorage.prefs.getString('token') ?? ''

    };

  }

  static Future httpGet(String path) async {

    try {

      final resp = await  _dio.get(path);

      return resp.data;

    } catch (e) {
      print(e);
      throw('Error en el Get');
    }

  }

  static Future post(String path, Map<String, dynamic> data) async {

    final formData = FormData.fromMap(data);

    try {

      final resp = await  _dio.post(path, data: formData);

      return resp.data;

    } catch (e) {
      print(e);
      throw('Error en el POST');
    }

  }

}

