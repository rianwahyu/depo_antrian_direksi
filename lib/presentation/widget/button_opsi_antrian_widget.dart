import 'package:flutter/material.dart';

class ButtonOpsiAntrianWidget extends StatelessWidget {
  final String keys;
  final Color colors;
  final VoidCallback? onPressed;

  const ButtonOpsiAntrianWidget({
    super.key,
    required this.keys,
    required this.colors,
     this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: colors,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onPressed: onPressed,
        child: Text(keys),
      ),
    );
  }
}
