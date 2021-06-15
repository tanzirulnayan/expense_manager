import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final Function _onPressHandler;

  AdaptiveFlatButton(this._text, this._onPressHandler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: _onPressHandler,
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : TextButton(
            onPressed: _onPressHandler,
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
  }
}
