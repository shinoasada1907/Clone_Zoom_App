import 'package:flutter/material.dart';
import 'package:zoom_clone_app/controllers/auth_controller.dart';
import 'package:zoom_clone_app/views/screens/home_screen.dart';
import 'package:zoom_clone_app/views/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  final AuthController _authController = AuthController();

  LoginScreen({Key? key}) : super(key: key);

  // const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join meeting',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/onboarding.jpg'),
          const SizedBox(
            height: 10,
          ),
          CustumButton(
            text: 'Google sign in',
            onPress: () {
              _authController.signInWithGoogle();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
