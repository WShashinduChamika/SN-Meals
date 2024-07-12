import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sn_meals/screens/onboard_screens/splash_screen.dart';

void main() {
  runApp( DevicePreview(
      enabled: true,
      builder: (context) => const SN_Meals(),
    ),);
  //runApp(const SN_Meals());
}

class SN_Meals extends StatelessWidget {
  const SN_Meals({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Metropolis',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
