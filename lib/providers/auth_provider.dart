

import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:flutter/material.dart';

enum AuthStatus {
  checking,
  authenticated,
  notAuthenticated
}

class AuthProvider extends ChangeNotifier {

  String? _token;
  AuthStatus authStatus = AuthStatus.checking;


  AuthProvider() {
    this.isAuthenticated();
  }


  login( String email, String password ) {

    // TODO: Petición HTTP
    this._token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiOTRlMDAyMDkzNTAwYWJhYzZhZjA4OWUwYWIxOWMwZTdkNjRlZmZhZTcyYjQ2MDEwMmJkNTAxNzJjYjE1YzlhOWI1MzNiMTRjNjIzZTM5ODIiLCJpYXQiOjE2NjU1MDAzNzIuOTkyMDE1LCJuYmYiOjE2NjU1MDAzNzIuOTkyMDE3LCJleHAiOjE2OTcwMzYzNzIuOTg4ODUxLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.BDHOhZ0zmSpAp-qIOen1h5NTecD7p6VDTae90N_5vixRuRSUdbGF1BEuMjkrgK6vkbJ4HtgQ-OWOVd0-RlkABhR1icdgBU66myOsouGdCdLPJuFh5LHo3Dd4i8QUKOG1OaU5uIeGEFvj-os4GHtZR3OWeFQN5fpKpLQndFI2T4CaUTEuIU4Z71vtThgCHyvfMsHu3bbtm5g9y-40oBYr71-6jxRt1ISBxOvhHsmMmtwF9_zbYR4phjk51Un7RlGFjzI3CBbdUWrNW48lLfn_GoEsjOYUC8RoCdChyhiUqdp2SwzQPeIsC7t2hknNvvgMDMvEl_emWiiv3eIjx3MaGlTnTGyhNJ6_SyYuwdUzaM0hGj3sbgl5UFZZ9u_f8uV6z95vgpQaXaplbq1FKNM7DZ6k70LLFPyJNW8S92SeyK5JASf4mixRjkbmgBR0Bf6MNgQZ0G-fNWiIssJf0KL6lG5UpyI38MBq1AhVvySVWAnOnLzgqL3oBJp62hBfCLWwFzvlmWR_xkAmZGuhOYnSc9ePMxo6h7z_pvP9Bnn0SApgHM_tpV_KMYT3ZNtAif0MP40VQathcTOakBK-4XiAsQQ91rz6NPf0mQ0Gk43at8LKSOidPEf7JfqgC1F6D-5ntgCWjNsxCOzfVSZz-hOl0BbcblLNVf9xoJVkEnyxPHg';
    LocalStorage.prefs.setString('token', this._token! );
    
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    
    NavigationService.replaceTo(Flurorouter.dashboardRoute);
  }

  Future<bool> isAuthenticated() async {

    final token = LocalStorage.prefs.getString('token');

    if( token == null ) {
      authStatus = AuthStatus.notAuthenticated;
      notifyListeners();
      return false;
    }

    // TODO: ir al backend y comprobar si el JWT es válido
    
    await Future.delayed(Duration(milliseconds: 1000 ));
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    return true;
  }


}
