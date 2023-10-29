import 'package:chepustore/widgets/registration_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  static const routeName = '/reg-page';
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 20, 24, 1),
      body: Column(
      children:<Widget>[ 
        const SizedBox(height: 60),
        const RegistrationWidget(),])
    );
  }
}