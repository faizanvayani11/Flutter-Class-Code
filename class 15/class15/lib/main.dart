import 'package:class15/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:class15/loginview.dart';
import 'package:flutter/material.dart';
// import 'homeview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Login_View());
  }
}
