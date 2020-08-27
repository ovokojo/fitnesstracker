import 'package:flutter/material.dart';
import 'package:timetracker/common_widgets/custom_raised_button.dart';

class SocialLoginButton extends CustomRaisedButton {
  SocialLoginButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0,
              ),
            ],
          ),
          color: color,
          height: 50,
          onPressed: onPressed,
        );
}
