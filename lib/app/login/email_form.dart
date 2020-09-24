import 'package:flutter/material.dart';
import 'package:timetracker/common_widgets/form_submit_button.dart';

class EmailLoginForm extends StatelessWidget {
  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'user@email.com',
        ),
      ),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ),
      SizedBox(
        height: 20,
      ),
      FormSubmitButton(text: 'Login', onPressed: (){}),
      FlatButton(onPressed: () {}, child: Text('Need an Account? Register'))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
