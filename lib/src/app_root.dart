


import 'package:flutter/material.dart';
import 'package:profile_setting_screen/screens/setting_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: SittingScreen(),

    ) ;
  }
}
