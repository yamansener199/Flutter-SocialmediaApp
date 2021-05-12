import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:solosolo/screens/OnBoarding_screen.dart';
import 'package:solosolo/screens/ProfilePage.dart';
import 'package:solosolo/screens/home_screen.dart';
import 'package:solosolo/screens/login_screen.dart';
import 'package:solosolo/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// Main Application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Routes',
      // Routes
      routes: <String, WidgetBuilder>{
        '/': (context) => new OnboardingScreen(), // Welcome Page
        '/login_screen': (context)=> new LoginPage(),
        '/signup_screen': (context)=> new RegisterPage(),
        '/home_screen': (context)=>new MyHome(),

      },
    );
  }
}