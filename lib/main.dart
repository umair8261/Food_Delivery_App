import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'home_page.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}