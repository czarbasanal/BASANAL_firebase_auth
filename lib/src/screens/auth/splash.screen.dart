import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:state_change_demo/src/screens/auth/login.screen.dart';
import 'package:state_change_demo/src/screens/auth/register.screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = "/";
  static const String name = "Splash Screen";
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My App',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                context.go(LoginScreen.route);
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                context.go(RegisterScreen.route);
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
