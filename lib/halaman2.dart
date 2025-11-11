import 'package:flutter/material.dart';
import 'package:tugaspribadi/halaman3.dart';

class Halaman2 extends StatelessWidget {
  final String nama;
  final String umur;
  const Halaman2({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat Datang $nama"),
            const SizedBox(height: 10),
            Text("Usia Anda $umur tahun"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 107, 26, 21)),
              child: const Text("Kembali ke halaman sebelumnya",
                  style: TextStyle(color: Color.fromARGB(255, 196, 194, 173))),
            ),
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
                  style: TextStyle(color: Color.fromARGB(255, 196, 194, 173))),
            ),
          ],
        ),
      ),
    );
  }
}
