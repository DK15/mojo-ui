import 'package:flutter/material.dart';

import 'screens/flash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mojo',
      home: FlashScreen(),
    );
  }
}
