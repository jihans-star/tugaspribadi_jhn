import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubTitle(BuildContext context);
}
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context){
    return Text(heading,style: TextStyle(color: Colors.red , fontSize: 24,fontWeight: FontWeight.bold),);
  }
  @override
  Widget buildSubTitle(BuildContext context) => const SizedBox.shrink();
}
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender,this.body);

  @override
  Widget buildTitle(BuildContext context){
    return Row(
      children: [
        const Icon(Icons.message, size:  20,color: Colors.grey),
        const SizedBox(width: 8),
        Text(sender),
      ],
    );
  }

  @override
  Widget buildSubTitle(BuildContext context){
    return Text(body);
  }
}

class ImageItem implements ListItem {
  final String pict;
  final String title;

  ImageItem(this.pict, this.title);
  @override
  Widget buildTitle(BuildContext context) =>
  Text(title, style: const TextStyle(fontWeight: FontWeight.bold));

  @override
  Widget buildSubTitle(BuildContext context){
        return Padding(padding: const EdgeInsets.only(top: 4.0),
        child: Image.asset(pict,
        height: 50,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TugasListBerbagaiItem extends StatelessWidget {
  const TugasListBerbagaiItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(30, (j){
      if (j % 5 == 0 ){
        return HeadingItem('Heading $j');
      }else if (j % 3 == 0){
        // ignore: unused_local_variable
        final imageIndex = (j ~/ 3) % 3 + 1 ;
        return ImageItem('images/tugas.jpg', 'Image Item $j');
      }else{
        return MessageItem('sender Item $j', 'Message body $j');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('List dengan berbagai item')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          final item = items[index];
          return Padding(padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            elevation: 2,
            child: ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubTitle(context),
              contentPadding: const EdgeInsets.all(8),
            ),
          ));
        },
      ),
    );
  }
}