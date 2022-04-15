import 'package:components_application/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: AppTheme.primary,
      elevation: 30,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/loading.gif'),
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20),
              child: Text(name!),
            )
        ],
      ),
    );
  }
}
