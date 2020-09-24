import 'package:flutter/material.dart';
import 'email_form.dart';

class EmailLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: GestureDetector(
          onTap: Navigator.of(context).pop,
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          child: EmailLoginForm(),
        ),
      ),
      backgroundColor: Colors.amber[50],
    );
  }
}
