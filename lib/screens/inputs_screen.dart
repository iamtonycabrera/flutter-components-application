import 'package:flutter/material.dart';
import 'package:components_application/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: CustomInputField(
                  labelText: 'Name',
                  hintText: 'Establishment name',
                  icon: Icons.home_rounded,
                  helperText: 'Only valid characters',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: CustomInputField(
                  labelText: 'Name',
                  hintText: 'Establishment name',
                  icon: Icons.home_rounded,
                  helperText: 'Only valid characters',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: CustomInputField(
                  labelText: 'Name',
                  hintText: 'Establishment name',
                  icon: Icons.home_rounded,
                  helperText: 'Only valid characters',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
