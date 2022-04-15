import 'package:flutter/material.dart';
import 'package:components_application/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.card_giftcard,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Eu aliqua ad quis cupidatat dolore ad in eu incididunt. Nostrud magna velit amet exercitation esse et aliqua mollit ullamco.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
