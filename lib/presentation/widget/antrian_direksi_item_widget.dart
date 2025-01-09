import 'package:depo_antrian_direksi/presentation/dashboard/bloc/skip_antrian/skip_antrian_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/app_colors.dart';
import '../../data/models/response/auth_response_model.dart';
import '../dashboard/bloc/call_antrian/call_antrian_bloc.dart';
import 'button_opsi_antrian_widget.dart';

class AntrianDireksiItem extends StatelessWidget {
  final String nama;
  final String jabatan;
  final String noAntrian;
  final String status;
  final String jam;
  final String keperluan;
  final AsyncSnapshot<AuthResponseModel?> snapshot;
  final VoidCallback onPressedPanggil;
  final VoidCallback onPressedSkip;

  const AntrianDireksiItem({
    super.key,
    required this.nama,
    required this.jabatan,
    required this.noAntrian,
    required this.status,
    required this.jam,
    required this.keperluan,
    required this.snapshot,
    required this.onPressedPanggil,
    required this.onPressedSkip,
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
      child: Column(
        children: [
          Row(
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
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textScaler: const TextScaler.linear(
                        1.0,
                      ),
                    ),
                    (snapshot.data!.user!.jabatan!.contains("DIREKTUR"))
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Keperluan : ',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textScaler: const TextScaler.linear(
                                  1.0,
                                ),
                              ),
                              Text(
                                keperluan,
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
                          )
                        : SizedBox(),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Waktu : $jam',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
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
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          (snapshot.data!.user!.jabatan!.contains("DIREKTUR"))
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<CallAntrianBloc, CallAntrianState>(
                      builder: (context, state) {
                        return state.maybeWhen(orElse: () {
                          return ButtonAntrianDireksiOnly(
                            onPressed: onPressedPanggil,
                            keys: 'Panggil',
                            colors: Colors.green,
                          );
                        }, loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }, error: () {
                          return ButtonAntrianDireksiOnly(
                            onPressed: onPressedPanggil,
                            keys: 'Panggil',
                            colors: Colors.green,
                          );
                        });
                      },
                    ),
                    BlocBuilder<SkipAntrianBloc, SkipAntrianState>(
                      builder: (context, state) {
                        return state.maybeWhen(orElse: () {
                          return ButtonAntrianDireksiOnly(
                            onPressed: onPressedSkip,
                            keys: 'Skip',
                            colors: Colors.red,
                          );
                        }, loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }, error: () {
                          return ButtonAntrianDireksiOnly(
                            onPressed: onPressedSkip,
                            keys: 'Skip',
                            colors: Colors.red,
                          );
                        });
                      },
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class ButtonAntrianDireksiOnly extends StatelessWidget {
  final VoidCallback onPressed;
  final String keys;
  final Color colors;

  const ButtonAntrianDireksiOnly({
    super.key,
    required this.onPressed,
    required this.keys,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors,
        ),
        child: Text(
          keys,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
          textScaler: TextScaler.linear(
            1.0,
          ),
        ),
      ),
    );
  }
}
