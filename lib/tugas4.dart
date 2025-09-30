import 'package:flutter/material.dart';

class SpaceLongList extends StatelessWidget {
  const SpaceLongList({super.key});

  @override
  Widget build(BuildContext context) {
    const spaceColors = [
      Colors.red,
      Colors.orange,
      Colors.blue,
      Colors.green
    ];
    final longItems = List<String>.generate(100, (j) => 'Item ${j + 1}');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Space & Long List',
          style: TextStyle(
            color: Color.fromARGB(255, 64, 64, 68),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 152, 188, 218),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Text('1.List dengan spasi merata',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 450,
            child: LayoutBuilder(
              builder: (context, constraints){
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(4, (index){
                        return Card(
                          color: spaceColors[index],
                          child: SizedBox(
                            height: 100,
                            child: Center(
                              child: Text(
                                'Item ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                );
              }
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            '2.List panjang 100 item',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: longItems.length,
            prototypeItem: const ListTile(title: Text('Item 1')),
            itemBuilder: (context, index){
              Color textColor;
              if ((index ~/ 10) % 4 == 0){
                textColor = Colors.red;
              }else if ((index ~/ 10) % 4 == 1){
                textColor = Colors.orange;
              }else if ((index ~/ 10) % 4 == 2){
                textColor = Colors.blue;
              }else{
                textColor = Colors.green;
              }

              return ListTile(
                leading: const Icon(Icons.star),
                title: Text(
                  longItems[index],
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
              );
            }
          )
        ],
      ),
    );
  }
}