import 'package:flutter/material.dart';
import 'package:timetracker/app/login/login_button.dart';
import 'package:timetracker/app/login/social_login_button.dart';
import 'package:timetracker/services/auth.dart';

class LoginPage extends StatelessWidget {
  LoginPage({@required this.auth});
  final AuthBase auth;

  Future<void> _loginAnonymously() async {
    try {
      await auth.loginAnonymously();
    } catch (e) {
      print('${e.toString()}');
    }
  }

  Future<void> _loginWithGoogle() async {
    try {
      await auth.loginWithGoogle();
    } catch (e) {
      print('${e.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
        leading: Icon(Icons.fitness_center),
      ),
      body: _displayButtons(),
      backgroundColor: Colors.amber[50],
    );
  }

  Widget _displayButtons() {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          SocialLoginButton(
            text: 'Sign In With Google',
            color: Colors.white,
            assetName: 'images/google-logo.png',
            onPressed: _loginWithGoogle,
          ),
          SizedBox(height: 15),
          SocialLoginButton(
            text: 'Sign In With Facebook',
            color: Color(0xFF334D92),
            textColor: Colors.white,
            assetName: 'images/facebook-logo.png',
            onPressed: () {},
          ),
          SizedBox(height: 15),
          LoginButton(
            text: 'Sign In with Email',
            color: Colors.teal[500],
            textColor: Colors.white,
            onPressed: () {},
          ),
          SizedBox(height: 20),
          Text(
            'Or',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          LoginButton(
            text: 'Go Anonymous',
            color: Colors.grey[600],
            textColor: Colors.white,
            onPressed: _loginAnonymously,
          ),
        ],
      ),
    );
  }
}
