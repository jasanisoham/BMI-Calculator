import 'package:flutter/material.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  static Map<int, Color> color = {
    50: Colors.pink.shade50,
    100: Colors.pink.shade100,
    200: Colors.pink.shade200,
    300: Colors.pink.shade300,
    400: Colors.pink.shade400,
    500: Colors.pink.shade500,
    600: Colors.pink.shade600,
    700: Colors.pink.shade700,
    800: Colors.pink.shade800,
    900: Colors.pink.shade900,
  };

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MaterialColor primeColor = MaterialColor(0xFF263238, MyApp.color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: primeColor,
          scaffoldBackgroundColor: const Color(0xff090d39),
        ),
        home: const MainScreen());
  }
}
