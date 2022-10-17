import 'package:admin_dashboard/api/WikiApi.dart';
import 'package:admin_dashboard/models/http/banners_response.dart';
import 'package:flutter/material.dart';

class BannerProvider extends ChangeNotifier {

  List<Banner> banners =  [];

  getBanners () async {
    final resp = await WikiApi.httpGet('/banners');
    final bannersResp = BannersResponse.fromMap(resp);



    print(this.banners);

    notifyListeners();
  }

}
