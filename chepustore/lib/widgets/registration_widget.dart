import 'package:chepustore/widgets/text_field.dart';
import 'package:flutter/material.dart';

class RegistrationWidget extends StatelessWidget {
  const RegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text('Регистрация',
          style: TextStyle(color: Colors.white,
          fontSize: 34,
          ),),
          const SizedBox(height: 5),
          Column(
            children:<Widget> [
            SizedBox(height: 2),
            TextFieldWidget(),
          ],
          )
        ],
      ),
    );
  }
}