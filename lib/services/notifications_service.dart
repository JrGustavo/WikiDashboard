import 'package:flutter/material.dart';

class NotificationsService {

  static GlobalKey<ScaffoldMessengerState> messengerKey = new GlobalKey<ScaffoldMessengerState>();

  static showSnackbarError ( String message ) {

    final snackBar = new SnackBar(
    backgroundColor: Colors.red,
    content: Text(message, style: TextStyle(color: Colors.white, fontSize: 20))
    );

  messengerKey.currentState!.showSnackBar(snackBar);

  }

  static showSnackbar( String message ) {

    final snackBar = new SnackBar(
        backgroundColor: Colors.green,
        content: Text(message, style: TextStyle(color: Colors.white, fontSize: 20))
    );

    messengerKey.currentState!.showSnackBar(snackBar);

  }
}