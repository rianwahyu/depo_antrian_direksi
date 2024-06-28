import 'package:flutter/material.dart';

class AntrianDireksiItem extends StatelessWidget {
  final String nama;
  final String jabatan;
  final String noAntrian;
  final String status;
  final String jam;

  const AntrianDireksiItem({
    super.key,
    required this.nama,
    required this.jabatan,
    required this.noAntrian,
    required this.status,
    required this.jam,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
            child: Center(
              child: Text(
                noAntrian,
                style: const TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
                textScaler: const TextScaler.linear(
                  1.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  textScaler: const TextScaler.linear(
                    1.0,
                  ),
                ),
                Text(
                  jabatan,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textScaler: const TextScaler.linear(
                    1.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            jam,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: (status == "Antri")
                    ? Colors.amber
                    : (status == "Masuk")
                        ? Colors.blue
                        : (status == "Selesai")
                            ? Colors.green
                            : (status == "Batal")
                                ? Colors.red
                                : Colors.grey,
                foregroundColor: Colors.white,
              ),
              onPressed: null,
              child: Text(                
                status,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textScaler: const TextScaler.linear(
                  1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
