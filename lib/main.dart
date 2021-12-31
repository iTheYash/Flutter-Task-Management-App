import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmanagement/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.white));
    return const MaterialApp(
      title: 'Task Management',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
