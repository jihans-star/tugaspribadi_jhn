import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  const Try({super.key, required this.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Try"),
      ),
      body: Center(
        child: Text("Hai $key"),
      ),
    );
  }
}