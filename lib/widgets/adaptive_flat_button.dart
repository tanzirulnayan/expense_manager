import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final Function _onPressHandler;

  AdaptiveFlatButton(this._text, this._onPressHandler);

  Widget _buildCupertinoButton() {
    return CupertinoButton(
      onPressed: _onPressHandler,
      child: Text(
        _text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: _onPressHandler,
      child: Text(
        _text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? _buildCupertinoButton() : _buildTextButton();
  }
}
