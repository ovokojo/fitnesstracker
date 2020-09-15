import 'package:flutter/material.dart';
import 'package:timetracker/services/auth.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.auth});
  final AuthBase auth;

  Future<void> _logout() async {
    try {
      await auth.logout();
    } catch (e) {
      print('${e.toString()}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          FlatButton(
            onPressed: _logout,
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
