import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StatusAntrianItemWidget extends StatelessWidget {
  final String statusAntrian;
  const StatusAntrianItemWidget({super.key, required this.statusAntrian});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: (statusAntrian == "Antri")
            ? Colors.amber
            : (statusAntrian == "Dilayani")
                ? Colors.blue
                : (statusAntrian == "Selesai")
                    ? Colors.green
                    : (statusAntrian == "Batal")
                        ? Colors.red
                        : Colors.grey,
        foregroundColor: Colors.white,
      ),
      onPressed: null,
      child: Text(
        statusAntrian,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        textScaler: const TextScaler.linear(
          1.0,
        ),
      ),
    );
  }
}
