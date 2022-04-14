import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const [
    'Batman',
    'Superman',
    'Aquaman',
    'Flash',
    'WonderWoman',
    'Cyborg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView2'),
          elevation: 10,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemCount: options.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(options[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider()));
  }
}
