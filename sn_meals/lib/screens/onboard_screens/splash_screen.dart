import 'package:flutter/material.dart';
import 'package:sn_meals/screens/onboard_screens/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToOnboardScreen();
  }
  void goToOnboardScreen()async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const OnboardScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    
    var width = MediaQuery.of(context).size.width / 375;
    var height = MediaQuery.of(context).size.height / 800;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: const AssetImage('assets/img/onboard_screen/splash_bg.png'),
            width: width*375,
            height: height*800,
            fit: BoxFit.cover,
          ),
           Image(
            image: const AssetImage('assets/img/onboard_screen/logo.png'),
            width: width*218,
            height: height*185,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
