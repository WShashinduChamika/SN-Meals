import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/common_wdigets/round_icon_button.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';
import 'package:sn_meals/screens/login/reset_password_screen.dart';
import 'package:sn_meals/screens/login/signup_screen.dart';
import 'package:sn_meals/screens/main_tab_screen/main_tab.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 34, vertical: height * 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 60,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: width * 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText,
                ),
              ),
              Text(
                'Add your details to login',
                style: TextStyle(
                  fontSize: width * 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText,
                ),
              ),
              SizedBox(
                height: height * 20,
              ),
              RoundTextField(
                hintText: 'Your Email',
                keyBoardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: height * 20,
              ),
              RoundTextField(
                hintText: 'Password',
                keyBoardType: TextInputType.visiblePassword,
                controller: passwordController,
                obsecureText: true,
              ),
              SizedBox(
                height: height * 25,
              ),
              RoundButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainTab()),
                    );
                  },
                  title: "Login"),
              SizedBox(
                height: height * 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: width * 14,
                    fontWeight: FontWeight.w500,
                    color: TColor.secondaryText,
                  ),
                ),
              ),
              SizedBox(
                height: height * 30,
              ),
              Text(
                'or Login With',
                style: TextStyle(
                  fontSize: width * 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText,
                ),
              ),
              SizedBox(
                height: height * 30,
              ),
              RoundIconButton(
                onPressed: () {},
                title: 'Login with facebook',
                icon: 'assets/img/authenticate_screens/facebook.png',
                clr: Color(0xFF367FC0),
              ),
              SizedBox(
                height: height * 20,
              ),
              RoundIconButton(
                onPressed: () {},
                title: 'Login with Google',
                icon: 'assets/img/authenticate_screens/google.png',
                clr: Color(0xFFDD4B39),
              ),
              SizedBox(
                height: height * 80,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Don\'t you have an account?',
                      style: TextStyle(
                        fontSize: width * 14,
                        fontWeight: FontWeight.w500,
                        color: TColor.secondaryText,
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: width * 14,
                        fontWeight: FontWeight.w500,
                        color: TColor.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
