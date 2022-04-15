import 'package:flutter/material.dart';

import 'package:components_application/router/app_routes.dart';
import 'package:components_application/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
                title: Text(menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView2Screen());
                  // Navigator.push(context, route);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
