import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  FloatButton({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: '추가',
      child: Icon(Icons.add),
    );
  }
}
