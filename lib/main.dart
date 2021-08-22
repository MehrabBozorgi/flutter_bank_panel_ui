import 'package:flutter/material.dart';
import 'package:flutter_green_wallet_ui/screens/begin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BeginScreen(),
    );
  }
}
