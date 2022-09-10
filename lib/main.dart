import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/demo_screen.dart';
import 'package:flutter_template/screens/list_demo.dart';
import 'package:flutter_template/screens/splash_screen.dart';
// import 'package:flutterfirebase/firebase_options.dart';


Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
