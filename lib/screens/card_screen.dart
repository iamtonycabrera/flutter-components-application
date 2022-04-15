import 'package:flutter/material.dart';
import 'package:components_application/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
              imageUrl:
                  'https://castlecraig.co.uk/wp-content/uploads/2020/12/aidan-howe-xrR-Kr2zppo-unsplash-scaled.jpg'),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.rudarprijedor.com/wp-content/uploads/2020/08/dice-chips-and-playing-cards.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.brytfmonline.com/wp-content/uploads/2021/09/GettyImages-200325572-001-5bb1897946e0fb0026e8d21e.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://cfhh.ca/wp-content/uploads/Gambling-addiction-treatment-at-Centres-for-Health-and-Healing.jpeg',
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
