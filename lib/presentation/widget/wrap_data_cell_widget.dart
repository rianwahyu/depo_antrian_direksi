import 'package:flutter/material.dart';

class WrappedDataCell extends StatelessWidget {
  final String text;

  WrappedDataCell(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 200, // Adjust the maxWidth according to your requirement
      ),
      child: Align(
        alignment: Alignment.centerLeft, // Align to the bottom left
        child: Text(
          text,
          softWrap: true,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}