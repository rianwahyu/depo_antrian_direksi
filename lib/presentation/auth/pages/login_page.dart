import 'package:depo_antrian_direksi/config/app_assets.dart';
import 'package:depo_antrian_direksi/config/app_colors.dart';
import 'package:depo_antrian_direksi/config/nav.dart';
import 'package:depo_antrian_direksi/presentation/auth/bloc/login/login_bloc.dart';
import 'package:depo_antrian_direksi/presentation/dashboard/pages/dashboard_page.dart';
import 'package:depo_antrian_direksi/presentation/widget/date_mask_formatter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final DateMaskFormatter _birthDate = DateMaskFormatter();

  final formKey = GlobalKey<FormState>();

  final nikEdt = TextEditingController();
  final tglLahirEdt = TextEditingController();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _requestPermission();

    _firebaseMessaging.getAPNSToken().then((String? token) {
    print("APNS Token: $token");
  });
  }

  

  Future<void> _requestPermission() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
      _firebaseMessaging.getToken().then((token) {
        if (kDebugMode) {
          print("Token FCM: $token");
        }
        // Gunakan token sesuai kebutuhan Anda (misalnya, kirimkan ke server Anda)
      });
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
      //_showPermissionDeniedDialog();
    }
  }

  void _showPermissionDeniedDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Notification Permission Denied'),
        content: const Text('Please enable notifications in your browser settings.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
              child: orientation == Orientation.portrait
                  ? _buildPortraitLayout()
                  : _buildLandscapeLayout());
        },
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              AppAssets.logo_depo,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Depo Antrian Direksi',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            const Text('Login menggunakan NIK Karyawan dan Tanggal Lahir anda'),
            const SizedBox(height: 24.0),
            _buildUsernameField(),
            const SizedBox(height: 12.0),
            _buildPasswordField(),
            const SizedBox(height: 24.0),
            _buildLoginButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildLandscapeLayout() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo_depo,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 24.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 24.0),
                  const Text(
                    'Depo Antrian Direksi',
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                      'Login menggunakan NIK Karyawan dan Tanggal Lahir anda'),
                  const SizedBox(height: 24.0),
                  _buildUsernameField(),
                  const SizedBox(height: 12.0),
                  _buildPasswordField(),
                  const SizedBox(height: 24.0),
                  _buildLoginButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return TextFormField(
      controller: nikEdt,
      decoration: const InputDecoration(
        labelText: 'NIK Karyawan',
        hintText: 'Masukkan NIK Karyawan',
        border: OutlineInputBorder(),
      ),
      validator: (value) => value == '' ? 'Tidak boleh kosong' : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      // /obscureText: true,
      controller: tglLahirEdt,
      decoration: const InputDecoration(
        labelText: 'Tanggal Lahir',
        hintText: 'dd/mm/yyyy',
        border: OutlineInputBorder(),
      ),

      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        _birthDate
      ],
      validator: (value) => value == '' ? 'Tidak boleh kosong' : null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  Widget _buildLoginButton() {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
            success: (data) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(data.message!),
                  backgroundColor: Colors.green,
                ),
              );
              /* Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardPage(),
                ),
              ); */

              Nav.replace(context, const DashboardPage());
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
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          orElse: () {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
                shadowColor: Colors.transparent,
                side: const BorderSide(
                  color: Colors.transparent,
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                alignment: Alignment.center,
                fixedSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                context.read<LoginBloc>().add(
                      LoginEvent.login(
                        nikEdt.text,
                        tglLahirEdt.text,
                      ),
                    );
                    //_requestPermission();
                    //checkPushPermission();
              },
              child: const Text('Login'),
            );
          },
        );
      },
    );
  }
}
