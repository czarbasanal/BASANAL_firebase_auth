import 'package:flutter/material.dart';
import 'package:state_change_demo/src/controllers/auth_controller.dart';
import 'package:go_router/go_router.dart';
import 'package:state_change_demo/src/screens/auth/splash.screen.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home';
  static const String path = "/home";
  static const String name = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(name),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthController.I.logout();
            context.go(SplashScreen.route);
          },
          child: const Text("Logout"),
        ),
      ),
    );
  }
}
