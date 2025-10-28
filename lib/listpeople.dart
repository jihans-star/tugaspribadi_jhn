import 'package:flutter/material.dart';

class Coba extends StatelessWidget {
  const Coba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List People"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return const ListTile(
            leading: Icon(Icons.people),
            title: Text("Judul"),
            subtitle: Text("Sub Judul"),
          );
        }
      ),
    );
  }
}