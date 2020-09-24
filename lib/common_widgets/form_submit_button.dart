import 'package:flutter/material.dart';
import 'package:timetracker/common_widgets/custom_raised_button.dart';

class FormSubmitButton extends CustomRaisedButton {
  FormSubmitButton({
    @required String text,
    VoidCallback onPressed,
  }) : super(
          child:
              Text(text, style: TextStyle(color: Colors.black, fontSize: 20)),
          height: 50.0,
          color: Colors.amber,
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
