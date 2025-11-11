import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 3"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 107, 26, 21)),
            child: const Text("Kembali ke halaman sebelumnya",
                style: TextStyle(color: Color.fromARGB(255, 196, 194, 173)))),
      ),
    );
  }
}
