import 'package:timetracker/common_widgets/custom_raised_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends CustomRaisedButton {
  LoginButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          color: color,
          height: 50,
          onPressed: onPressed,
        );
}
