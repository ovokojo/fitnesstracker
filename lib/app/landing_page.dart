import 'package:flutter/material.dart';
import 'package:timetracker/app/home_page.dart';
import 'package:timetracker/app/login/login.dart';
import 'package:timetracker/services/auth.dart';

class LandingPage extends StatefulWidget {
  LandingPage({@required this.auth});
  final AuthBase auth;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  User _user;

  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  Future<void> _checkUser() async {
    User user = await widget.auth.currentUser();
    _updateUser(user);
  }

  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return LoginPage(
        onLogin: _updateUser,
        auth: widget.auth,
      );
    }
    return HomePage(
      onLogout: () => _updateUser(null),
      auth: widget.auth,
    );
  }
}
