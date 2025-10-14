import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 232),
      appBar: AppBar(
        title: const Text('Profil Jihan',
          style: TextStyle(
            color: Color.fromARGB(255, 228, 223, 204))),
            backgroundColor: const Color.fromARGB(255, 155, 143, 130),
        ),

      body:Padding(
        padding: const EdgeInsets.only(top:20),
        child:Column(
          children: [
            Center(
              child:ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset('images/jihan1.jpeg'),
              ),
            ),
              const SizedBox(height: 18),
              const Text('Jihan Safitri', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 14),
              const Text('Siswi SMK YPC Tasikmalaya', style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 104, 30, 30)),),
              const SizedBox(height: 18),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: () {},
                  icon: const Icon(Icons.call, color: Color.fromARGB(255, 104, 30, 30)),
                  label: const Text('Call', style: TextStyle(color: Color.fromARGB(255, 104, 30, 30))),
                  style: const ButtonStyle(
                    backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 224, 223, 207))
                  ),
                ),
                ElevatedButton.icon(onPressed: () {},
                  icon: const Icon(Icons.map, color: Color.fromARGB(255, 104, 30, 30)),
                  label: const Text('Maps', style: TextStyle(color: Color.fromARGB(255, 104, 30, 30))),
                  style: const ButtonStyle(
                    backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 224, 223, 207))
                  ),
                ),
                ElevatedButton.icon(onPressed: () {},
                  icon: const Icon(Icons.share, color: Color.fromARGB(255, 104, 30, 30)),
                  label: const Text('Share', style: TextStyle(color: Color.fromARGB(255, 104, 30, 30))),
                  style: const ButtonStyle(
                    backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 224, 223, 207))
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}