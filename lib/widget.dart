import 'package:flutter/material.dart';
class Layoutje extends StatelessWidget {
  const Layoutje({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Pribadi"),
      ),
      body: Column(
        children: [
          Image.asset('images/jihan.jpg'),
          const SizedBox(height: 10),
          const Text('Jihan Safitri',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
          const SizedBox(height: 10),
          const Text('Siswa SMK YPC Tasikmalaya',
          style: TextStyle(
            color: Color.fromARGB(255, 1, 65, 117)
          ),
          ),
          SizedBox(height: 10,
          ),
          const Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.call)],
              )
            ],
          )
        ],
      ),
    );
  }
}