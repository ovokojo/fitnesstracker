import 'package:flutter/material.dart';
import 'package:timetracker/app/login/login_button.dart';
import 'package:timetracker/app/login/social_login_button.dart';

class LoginPage extends StatelessWidget {
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
            onPressed: () {},
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
