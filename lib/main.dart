import 'package:flutter/material.dart';
import 'package:fyuge_task/view/signin_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Application',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
