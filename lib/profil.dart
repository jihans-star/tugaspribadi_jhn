import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Jihan'),),
      body: Column(
        children: [
          Center(
            child:Image.asset('images/jihan.jpg'),
          ),
          const SizedBox(height: 10),
            const Text('Jihan Safitri', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text('Siswi SMK YPC Tasikmalaya', style: TextStyle(fontSize: 18, color: Colors.pink),),
            const SizedBox(height: 10),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call),
                  Text('Call'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.map),
                  Text('Map'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('Share'),
                ],
              )
            ],
            ),
        ],
      ),
    );
  }
}