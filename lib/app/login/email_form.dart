import 'package:flutter/material.dart';
import 'package:timetracker/common_widgets/form_submit_button.dart';

enum EmailFormType { Login, Register }

class EmailLoginForm extends StatefulWidget {
  @override
  _EmailLoginFormState createState() => _EmailLoginFormState();
}

class _EmailLoginFormState extends State<EmailLoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var formType = EmailFormType.Login;

  void _submitForm() {
    print(
        'email: ${_emailController.text} | pass: ${_passwordController.text}');
  }

  void _toggleFormType() {
    setState(() {
      formType == EmailFormType.Login
          ? formType = EmailFormType.Register
          : formType = EmailFormType.Login;
    });
  }

  List<Widget> _buildChildren() {
    final _primaryText =
        formType == EmailFormType.Login ? 'Login' : 'Create Account';
    final _secondaryText = formType == EmailFormType.Login
        ? 'Need an Account? Register'
        : 'Have an Account? Login';

    return [
      TextField(
        controller: _emailController,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'user@email.com',
        ),
      ),
      TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
      ),
      SizedBox(
        height: 20,
      ),
      FormSubmitButton(text: _primaryText, onPressed: _submitForm),
      FlatButton(onPressed: _toggleFormType, child: Text(_secondaryText))
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
