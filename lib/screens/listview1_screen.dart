import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

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
          title: const Text('ListView1'),
        ),
        body: ListView(
          children: <Widget>[
            ...options
                .map((hero) => ListTile(
                      title: Text(hero),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()

            //ListTile(
            //  title: Text('First option'),
            //),
          ],
        ));
  }
}
