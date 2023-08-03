import 'package:flutter/material.dart';
import 'package:rotatory_app/features/login/presntation/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   void initState() {
    super.initState();
    // Call a function to navigate to the login screen after 3 seconds
    navigateToLoginScreen();
  }

  void navigateToLoginScreen() {
    // Delay the navigation by 3 seconds using Future.delayed
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the login screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => LoginScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(
          'assets/images/splash_screen_logo.png',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
