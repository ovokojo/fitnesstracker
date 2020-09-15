import 'package:flutter/material.dart';
import 'package:timetracker/app/home_page.dart';
import 'package:timetracker/app/login/login.dart';
import 'package:timetracker/services/auth.dart';

class LandingPage extends StatelessWidget {
  LandingPage({@required this.auth});
  final AuthBase auth;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: auth.onAuthStateChanged,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User user = snapshot.data;
            if (user == null) {
              return LoginPage(
                auth: auth,
              );
            }
            return HomePage(
              auth: auth,
            );
          } else {
            return LoadingScreen();
          }
        });
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
