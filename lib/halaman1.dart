import 'package:flutter/material.dart';
import 'package:tugaspribadi/halaman2.dart';
import 'package:tugaspribadi/halaman3.dart';

class Halaman1 extends StatelessWidget {
  final String nama = "Jihan Safitri";
  final String umur = "17";
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Halaman2(nama: nama, umur: umur)),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 107, 26, 21)),
                child: const Text("Pergi ke halaman ke 2",
                    style:
                        TextStyle(color: Color.fromARGB(255, 196, 194, 173)))),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Halaman3()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 107, 26, 21)),
                child: const Text("Pergi ke halaman ke 3",
                    style:
                        TextStyle(color: Color.fromARGB(255, 196, 194, 173)))),
          ],
        ),
      ),
    );
  }
}
