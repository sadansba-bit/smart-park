import 'package:flutter/material.dart';
import 'map_page.dart'; 

void main() {
  runApp(const WasamApp());
}

class WasamApp extends StatelessWidget {
  const WasamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wasam Amusement Park',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MapPage(),
    );
  }
}