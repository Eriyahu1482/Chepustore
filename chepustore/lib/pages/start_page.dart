import 'package:chepustore/pages/registrarion_page.dart';
import 'package:chepustore/widgets/main_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  static const routeName = '/start-page';
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Container(
              width: 250,
              height: 250,
              child: Image.asset('assets/IconSleep.png')),
            const SizedBox(height: 220),
             MainButtonWidget(
              onTap: () {
                Navigator.of(context).pushNamed(RegistrationPage.routeName);
              },
              buttonName: 'Войти',
              buttonColor: Color.fromRGBO(70, 51, 111, 1),
              buttonTextColor: Colors.white,
            ),
            const SizedBox(height: 20),
             MainButtonWidget(
              buttonName: 'Зарегистрироваться',
              buttonColor: Colors.transparent,
              buttonTextColor: Colors.white,
              onTap: () {
                Navigator.of(context).pushNamed(RegistrationPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}