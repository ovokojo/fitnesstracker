import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
        leading: Icon(Icons.fitness_center),
      ),
      body: _displayButtons(),
    );
  }

  Widget _displayButtons() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.yellow,
            child: SizedBox(
              height: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.green,
            child: SizedBox(
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
