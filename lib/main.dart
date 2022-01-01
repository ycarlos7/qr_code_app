import 'package:flutter/material.dart';
import 'package:qr_code_app/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WIFI QR CODE GENERATOR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(title: 'Flutter Demo Home Page'),
    );
  }
}
