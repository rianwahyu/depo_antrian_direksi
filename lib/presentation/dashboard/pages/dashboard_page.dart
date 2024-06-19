import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:depo_antrian_direksi/config/app_assets.dart';
import 'package:depo_antrian_direksi/config/app_colors.dart';
import 'package:depo_antrian_direksi/config/app_format.dart';
import 'package:depo_antrian_direksi/config/fcm_services.dart';
import 'package:depo_antrian_direksi/config/nav.dart';
import 'package:depo_antrian_direksi/data/datasource/auth_local_datasource.dart';
import 'package:depo_antrian_direksi/data/models/response/auth_response_model.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/login/login_bloc.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:depo_antrian_direksi/presentation/auth/pages/login_page.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/create_antrian/create_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/data_antrian/data_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/bloc/status_antrian/status_antrian_bloc.dart';
import 'package:depo_antrian_direksi/presentation/widget/antrian_direksi_item_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String? nik;
  String? jabatan;

  bool _isSwitched = false;

  void _toggleSwitch(bool value) {
    _isSwitched = value;
    print('staus Antrian : $value ');
    _showStatusAntrian(context, _isSwitched);
  }

  void _showStatusAntrian(BuildContext context, bool isSwitched) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.white70,
          title: const Text(
            'Ubah Status Antrian',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          content: Text(
              "Apakah anda inign ${isSwitched ? 'mengaktifkan' : 'menonatktifkan'} status Antrian ?"),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Batal',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            BlocListener<StatusAntrianBloc, StatusAntrianState>(
              listener: (context, state) {
                state.maybeWhen(
                    successUpdateStatusAntrian: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.green,
                        ),
                      );
                      getStatusAntrian();
                    },
                    errorUpdateStatusAntrian: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    orElse: () {});
              },
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                ),
                child: const Text(
                  'Simpan',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  context.read<StatusAntrianBloc>().add(
                        StatusAntrianEvent.updateStatusAntrian(
                          isSwitched,
                          nik!,
                        ),
                      );
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();

    refreshContent();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      String payloadData = jsonEncode(message.data);
      DMethod.log("Cek di Dashboard $payloadData ");

      Map<String, dynamic> decodedData = jsonDecode(payloadData);

      // Ambil nilai dari kunci "antrian"
      String typeAntrian = decodedData['type'];
      if (typeAntrian == "refreshAntrian") {
        getStatusAntrian();
      }

      getDataAntrian();
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.notification != null) {
        print("Background Notification Tapped");
        // navigatorKey.currentState!.pushNamed("/message", arguments: message);
      }
    });
  }

  void refreshContent() {
    fetchDataUser();
    getStatusAntrian();
    getDataAntrian();
  }

  void fetchDataUser() async {
    AuthResponseModel? authResponse = await AuthLocalDataSource().getAuthData();
    if (authResponse != null) {
      // Mendapatkan nilai nik dari objek User di dalam AuthResponseModel
      nik = authResponse.user?.nik;
      jabatan = authResponse.user?.jabatan;
      setState(() {}); // Update UI setelah mendapatkan nilai
    }
  }

  void getDataAntrian() {
    context.read<DataAntrianBloc>().add(const DataAntrianEvent.getAntrian());
  }

  void getStatusAntrian() {
    context
        .read<StatusAntrianBloc>()
        .add(const StatusAntrianEvent.cekStatusAntrian());
  }

  void _showDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    final keperluanEdt = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppColors.orange,
          title: const Text(
            'Keperluan',
            style:
                TextStyle(fontWeight: FontWeight.w700, color: AppColors.white),
          ),
          content: Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: keperluanEdt,
                    decoration: const InputDecoration(
                        hintText: "Tuliskan keperluan anda"),
                    onSaved: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    minLines: 5,
                    maxLines: 5,
                    maxLength: 220,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.red),
              ),
              child: const Text(
                'Batal',
                style: TextStyle(color: AppColors.white),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            BlocConsumer<CreateAntrianBloc, CreateAntrianState>(
              listener: (context, state) {
                state.maybeWhen(
                    success: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(data),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Navigator.of(context).pop();
                      getDataAntrian();
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    orElse: () {});
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(AppColors.black),
                      ),
                      child: const Text(
                        'Simpan',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                        }
                        context.read<CreateAntrianBloc>().add(
                              CreateAntrianEvent.createKeperluan(
                                nik!,
                                keperluanEdt.text.toString(),
                              ),
                            );
                      },
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.white70,
          title: const Text(
            'Logout',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          content:
              const Text("Apakah anda yakin ingin keluar dari akun anda ?"),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Batal',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            BlocListener<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeWhen(
                    success: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Logout successful'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Nav.replace(context, const LoginPage());
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    orElse: () {});
              },
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                ),
                child: const Text(
                  'Simpan',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  context.read<LogoutBloc>().add(const LogoutEvent.logout());
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      bottomNavigationBar: _buttonAmbilAntrian(context),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return CustomScrollView(
            slivers: [
              buildAppBar(context),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            AppFormat.greetingMessage(),
                            textScaler: const TextScaler.linear(1.0),
                          ),
                        ),
                        (orientation == Orientation.portrait)
                            ? _portraitHeader(context)
                            : _landscapeHeader(context),
                        BlocBuilder<StatusAntrianBloc, StatusAntrianState>(
                          builder: (context, state) {
                            if (kDebugMode) {
                              print(state);
                            }

                            return state.maybeWhen(
                              orElse: () {
                                return const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Status Antrian '),
                                    Text(
                                      'OFF',
                                      style: TextStyle(
                                          color: AppColors.darkRed,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                );
                              },
                              switchToggled: (isSwitched) {
                                return const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Status Antrian '),
                                    Text(
                                      'Aktif',
                                      style: TextStyle(
                                          color: AppColors.darkGreen,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'List Antrian',
                                textScaler: TextScaler.linear(1.0),
                              ),
                              Text(
                                AppFormat.fullDate(AppFormat.getCurrentDate()),
                                textScaler: const TextScaler.linear(1.0),
                              ),
                            ],
                          ),
                        ),
                        BlocBuilder<DataAntrianBloc, DataAntrianState>(
                          builder: (context, state) {
                            return state.maybeWhen(orElse: () {
                              return Center(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 24),
                                    Image.asset(
                                      AppAssets.empty_folder,
                                      width: 80,
                                      height: 80,
                                    ),
                                    const SizedBox(height: 16),
                                    const Text('Data Antrian Kosong',
                                        style: TextStyle(
                                          fontSize: 16,
                                        )),
                                  ],
                                ),
                              );
                            }, loading: () {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }, loaded: (antrian) {
                              return ListView.builder(
                                padding: const EdgeInsets.only(top: 8),
                                shrinkWrap: true,
                                itemCount: antrian.length,
                                itemBuilder: (context, index) {
                                  final item = antrian[index];

                                  return AntrianDireksiItem(
                                    nama: item.namaKaryawan!,
                                    jabatan: item.jabatan!,
                                    noAntrian: item.noAntrian!,
                                    status: item.statusAntrian!,
                                    jam: item.waktuAntrian!,
                                  );
                                },
                              );
                            });
                          },
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          );
        },
      ),
    );
    /* return Scaffold(
      backgroundColor: AppColors.lightWhite,
      bottomNavigationBar: _buttonAmbilAntrian(context),
      body: CustomScrollView(
        slivers: [
          buildAppBar(context),
           SliverToBoxAdapter(
            child: OrientationBuilder(
              builder: (context, orientation) {
                return Container(
                  color: Colors.blue,
                  height: orientation == Orientation.portrait ? 200.0 : 100.0,
                  child: Center(
                    child: Text(
                      orientation == Orientation.portrait
                          ? 'Portrait Mode'
                          : 'Landscape Mode',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                );
              },
            ),
          ),
          /* SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    AppFormat.greetingMessage(),
                    textScaler: const TextScaler.linear(1.0),
                  ),
                ),

                OrientationBuilder(
              builder: (context, orientation) {
                return Container(
                  color: Colors.blue,
                  height: orientation == Orientation.portrait ? 200.0 : 100.0,
                  child: Center(
                    child: Text(
                      orientation == Orientation.portrait
                          ? 'Portrait Mode'
                          : 'Landscape Mode',
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                );
              }),
                (jabatan!.contains("SEKRETARIAT"))
                    ? OrientationBuilder(
                        builder: (context, orientation) {
                          return Container(
                              child: orientation == Orientation.portrait
                                  ? Text('Port')
                                  : _landscape(context));
                        },
                      )
                    : Container(
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
                        margin: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 5,
                          bottom: 16,
                        ),
                        padding: const EdgeInsets.all(16),
                        child: FutureBuilder(
                            future: AuthLocalDataSource().getAuthData(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              if (snapshot.hasData) {
                                return Column(
                                  children: [
                                    dataLogin('Nik',
                                        snapshot.data!.user!.nik.toString()),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    dataLogin('Nama',
                                        snapshot.data!.user!.nama.toString()),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    dataLogin(
                                        'Jabatan',
                                        snapshot.data!.user!.jabatan
                                            .toString()),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                );
                              } else {
                                return const Text('Tidak ada data');
                              }
                            }),
                      ),
                BlocBuilder<StatusAntrianBloc, StatusAntrianState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Status Antrian '),
                            Text(
                              'OFF',
                              style: TextStyle(
                                  color: AppColors.darkRed,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                      loaded: (message) {
                        return const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Status Antrian '),
                            Text(
                              'Aktif',
                              style: TextStyle(
                                  color: AppColors.darkGreen,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'List Antrian',
                        textScaler: TextScaler.linear(1.0),
                      ),
                      Text(
                        AppFormat.fullDate(AppFormat.getCurrentDate()),
                        textScaler: const TextScaler.linear(1.0),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<DataAntrianBloc, DataAntrianState>(
                  builder: (context, state) {
                    return state.maybeWhen(orElse: () {
                      return Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 24),
                            Image.asset(
                              AppAssets.empty_folder,
                              width: 80,
                              height: 80,
                            ),
                            const SizedBox(height: 16),
                            const Text('Data Antrian Kosong',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      );
                    }, loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }, loaded: (antrian) {
                      return ListView.builder(
                        padding: const EdgeInsets.only(top: 8),
                        shrinkWrap: true,
                        itemCount: antrian.length,
                        itemBuilder: (context, index) {
                          final item = antrian[index];

                          return AntrianDireksiItem(
                            nama: item.namaKaryawan!,
                            jabatan: item.jabatan!,
                            noAntrian: item.noAntrian!,
                            status: item.statusAntrian!,
                            jam: item.waktuAntrian!,
                          );
                        },
                      );
                    });
                  },
                ),
              ],
            ),
          ) */
        ],
      ),
    ); */
  }

  Widget _portraitHeader(BuildContext context) {
    return Column(
      children: [
        _dataUserContainer(context),
        (jabatan!.contains("SEKRETARIAT"))
            ? _statusAntrianContainer(context)
            : const SizedBox(),
      ],
    );
  }

  Widget _dataUserContainer(BuildContext context) {
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
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 5,
        bottom: 16,
      ),
      padding: const EdgeInsets.all(16),
      child: FutureBuilder(
          future: AuthLocalDataSource().getAuthData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              return Column(
                children: [
                  dataLogin('Nik', snapshot.data!.user!.nik.toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  dataLogin('Nama', snapshot.data!.user!.nama.toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  dataLogin('Jabatan', snapshot.data!.user!.jabatan.toString()),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              );
            } else {
              return const Text('Tidak ada data');
            }
          }),
    );
  }

  Widget _statusAntrianContainer(BuildContext context) {
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
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 5,
        bottom: 16,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Pengaturan Status Antrian',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Status'),
              BlocBuilder<StatusAntrianBloc, StatusAntrianState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Switch(
                        activeColor: Colors.red,
                        inactiveThumbColor: Colors.red,
                        value: _isSwitched,
                        onChanged: _toggleSwitch,
                      );
                    },
                    switchToggled: (isSwitched) {
                      _isSwitched =
                          isSwitched; // Update internal state based on Bloc state
                      return Switch(
                        activeColor: Colors.green,
                        inactiveThumbColor: Colors.green,
                        value: _isSwitched,
                        onChanged: _toggleSwitch,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _landscapeHeader(BuildContext context) {
    return (jabatan!.contains("SEKRETARIAT"))
        ? IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: _dataUserContainer(context),
                ),
                AspectRatio(
                  aspectRatio: 2.0,
                  child: _statusAntrianContainer(context),
                )
              ],
            ),
          )
        : _dataUserContainer(context);
  }

  Widget buildAppBar(BuildContext context) {
    return SliverAppBar(
      title: const Text(
        'Depo Antrian Direksi',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        textScaler: TextScaler.linear(1.0),
      ),
      backgroundColor: AppColors.primary,
      floating: true,
      pinned: true,
      snap: false,
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: InkWell(
            onTap: () {
              refreshContent();
            },
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: InkWell(
            onTap: () {
              _showLogoutDialog(context);
            },
            child: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonAmbilAntrian(BuildContext context) {
    return BlocBuilder<StatusAntrianBloc, StatusAntrianState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: null,
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15, top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, -1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Ambil Antrian Tidak Tersedia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
            );
          },
          switchToggled: (isSwitched) {
            _isSwitched =
                isSwitched; // Update internal state based on Bloc state
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                _showDialog(context);
              },
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15, top: 10),
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, -1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Ambil Antrian',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
            );
          },
        );
      },
    );
    /* return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        _showDialog(context);
      },
      child: Container(
          padding: const EdgeInsets.only(bottom: 15, top: 10),
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, -1),
                blurRadius: 10,
              ),
            ],
          ),
          child: const Text(
            'Ambil Antrian',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          )),
    ); */
  }

  Row dataLogin(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            textScaler: const TextScaler.linear(1.0),
          ),
        ),
        const Text(':'),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
            textScaler: const TextScaler.linear(1.0),
          ),
        )
      ],
    );
  }
}
