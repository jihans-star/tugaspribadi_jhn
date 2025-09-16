import 'package:flutter/material.dart';

abstract class Listitem {
  Widget buildTitle(BuildContext context);
  Widget buildSubTitle(BuildContext context);
}
class HeadingItem implements Listitem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context){
    return Text(heading,style: Theme.of(context).textTheme.headlineMedium,);
  }
  @override
  Widget buildSubTitle(BuildContext context){
    return const SizedBox.shrink();
  }
}
class MessageItem implements Listitem {
  final String sender;
  final String body;

  MessageItem(this.sender,this.body);

  @override
  Widget buildTitle(BuildContext context){
    return Text(sender);
  }

  @override
  Widget buildSubTitle(BuildContext context){
    return Text(body);
  }
}
class LayoutListItem extends StatelessWidget {
  const LayoutListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Listitem> items = List<Listitem>.generate(
      20,
      (i) => i % 6 == 0
      ? HeadingItem('Judul $i')
      : MessageItem('sender $i', 'Message $i')
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('List dengan berbagai Item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubTitle(context),
          );
        },
      ),
    );
  }
}