import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:omega_task/api/firebase_api.dart';
import 'package:omega_task/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAPI().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}
