import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';
import 'on_borading_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // runApp(DevicePreview(
  //   enabled: true,
  //    builder: (context) => MyApp(),));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoradingPage(),
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
    );
  }
}