import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    int itemsCount = 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Panjang',
        style: TextStyle(color: Color.fromARGB(255, 233, 211, 179)),
        ),
        backgroundColor: const Color.fromARGB(255, 90, 31, 27),
        centerTitle: true,
      ),
      body: LayoutBuilder( //Tinggi maksimum parent
        builder:(context, constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints : BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  itemsCount, (index) => Card(
                    color: const Color.fromARGB(255, 206, 156, 152),
                    margin: EdgeInsets.all(15),
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                        'Item $index',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 77, 58, 43)
                          )
                        ),
                      )
                    ),
                  )
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}