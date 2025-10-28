import 'package:flutter/material.dart';
import 'package:tugaspribadi/listpeople.dart';


void main() {
  runApp(const JeApp());
}

class JeApp extends StatelessWidget {
  const JeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Flutter",
      debugShowCheckedModeBanner: false,
      home: Coba(),
    );
  }
}