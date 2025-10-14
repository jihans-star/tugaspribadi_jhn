import 'package:flutter/material.dart';

class Listlatihan extends StatelessWidget {
  const Listlatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Ulangi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Menu Aplikasi'),
            const ListTile(
              leading: Icon(Icons.alarm),title: Text('Alarm 1'),
            ),
            const ListTile(
              leading: Icon(Icons.alarm),title: Text('Alarm 2'),
            ),
            const ListTile(
              leading: Icon(Icons.alarm),title: Text('Alarm 3'),
            ),
            const Text('Warna Horizontal'),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(width: 100, color: const Color.fromARGB(255, 92, 25, 20)),
                  Container(width: 100, color: const Color.fromARGB(255, 105, 42, 37)),
                  Container(width: 100, color: const Color.fromARGB(255, 182, 126, 122)),
                  Container(width: 100, color: const Color.fromARGB(255, 199, 128, 123)),
                ],
              ),
            ),
            const Text('Grid'),
            GridView.count(crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return Center(
                child: Text('grid $index',style: const TextStyle(color: Color.fromARGB(255, 119, 44, 38)),),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}