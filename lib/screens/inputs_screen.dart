import 'package:flutter/material.dart';
import 'package:components_application/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    Map<String, String> formValues = {
      'name': 'Casino',
      'location': 'Madrid',
      'email': 'casinodepor@gmail.com',
      'pass': '12345',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'Write the name',
                  //icon: Icons.home_rounded,
                  helperText: 'Only valid characters', formProperty: 'name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Location',
                  hintText: 'Write the location',
                  //icon: Icons.home_rounded,
                  helperText: 'Only valid characters', formProperty: 'location',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Write the email',
                  // icon: Icons.home_rounded,
                  helperText: 'Only valid characters',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Write the password',
                  //icon: Icons.home_rounded,
                  helperText: 'Only valid characters',
                  obscureText: true, formProperty: 'pass',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Center(
                            child: Text(
                          'Save',
                          style: TextStyle(fontSize: 18),
                        )),
                      )),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Not valid form!');
                      return;
                    }

                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
