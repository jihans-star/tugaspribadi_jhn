import 'package:flutter/material.dart';

class Listjihan extends StatelessWidget {
  const Listjihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.alarm),
              title: Text('Alarm')),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Contact')),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.audio_file),
              title: Text('Musik')),
          ),
        ],
      ),
    );
  }
}