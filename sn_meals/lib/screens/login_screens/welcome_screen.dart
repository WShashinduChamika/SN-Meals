import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight >= 800 ? 499 * height : height * 520,
            child: Stack(
              //alignment: Alignment.bottomCenter,
              children: [
                // Image(
                //   image: AssetImage('assests/img/top_shape.png'),
                //   width: width * 375,
                //   //height: height * 382,
                // ),
                // Image(
                //   image: AssetImage('assests/img/logo.png'),
                //   width: width * 218.0,
                //   height: height * 185.0,
                //   fit: BoxFit.contain,
                // ),
                Container(
                  height: height * 382,
                  width: width * 375,
                  child: Image.asset(
                    'assets/img/authenticate_screens/brown_top.png',
                    //width: width * 375,
                    //height: height*300,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: height * 284,
                  //top: screenHeight>=800? height*314: height* 360,
                  left: width * 30,
                  child: Image.asset(
                    'assets/img/authenticate_screens/logo.png',
                    width: width * 318.0,
                    height: height * 285.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight >= 800 ? height * 37.5 : height * 10,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenHeight >= 800 ? width * 34 : width * 44),
            child: Text(
              textAlign: TextAlign.center,
              'Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep',
              style: TextStyle(
                fontSize: width * 13,
                fontWeight: FontWeight.w500,
                color: TColor.secondaryText,
              ),
            ),
          ),
          SizedBox(
            height: screenHeight >= 800 ? height * 37.5 : height * 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenHeight >= 800 ? width * 34 : width * 44),
            child: RoundButton(
              onPressed: () {
                print('Login');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const LoginScreen()),
                // );
              },
              title: "Login",
              type: RoundButtonType.bgPrimary,
            ),
          ),
          SizedBox(
            height: screenHeight >= 800 ? height * 37.5 : height * 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
               horizontal: screenHeight >= 800 ? width * 34 : width * 44
            ),
            child: RoundButton(
              onPressed: () {
                print('Register');
              },
              title: "Register",
              type: RoundButtonType.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
