import 'package:flutter/material.dart';
class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Layout Pribadi"),
      ),
      body:Column(
        children: [
          const SizedBox(height: 20),
          ClipOval(
            child: Image.asset(
              'images/jihan.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
            const SizedBox(height:10, width:  10,),
            const Text('Jihan Safitri',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height:6),
          const Text(
            'Rekayasa Perangkat Lunak',
            style: TextStyle(
              fontSize: 18,
              color:Color.fromARGB(255, 104, 112, 124),
            ),
          ),
          const SizedBox(
            height:20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: () {} ,
                  icon:const Icon(Icons.call),
                  label: const Text('Call')
                ),
                ElevatedButton.icon(onPressed: () {} ,
                  icon:const Icon(Icons.map),
                  label: const Text('Map')
                ),
                ElevatedButton.icon(onPressed: () {} ,
                  icon:const Icon(Icons.share),
                  label: const Text('Share'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}