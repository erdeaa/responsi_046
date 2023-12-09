import 'package:flutter/material.dart';
import 'package:responsi/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xff9370DB)),
          colorScheme: ColorScheme.fromSwatch(
            backgroundColor: const Color(0xffE6E6FA),
          )),
      home: const HomePage(title: "Meal Categories"),
    );
  }
}
