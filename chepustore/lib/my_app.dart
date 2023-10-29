import 'package:chepustore/pages/registrarion_page.dart';
import 'package:flutter/material.dart';

import 'pages/start_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const StartPage(),
      routes: {
        StartPage.routeName:(context) => const StartPage(),
        RegistrationPage.routeName:(context) => const RegistrationPage(),
      },
    );
  }
}