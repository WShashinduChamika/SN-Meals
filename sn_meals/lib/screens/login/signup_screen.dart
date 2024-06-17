import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';
import 'package:sn_meals/screens/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 34, vertical: height * 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight >= 800 ? height * 60 : height * 0,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: width * 30,
                    fontWeight: FontWeight.w800,
                    color: TColor.primaryText,
                  ),
                ),
                Text(
                  'Add your details to sign up',
                  style: TextStyle(
                    fontSize: width * 14,
                    fontWeight: FontWeight.w500,
                    color: TColor.secondaryText,
                  ),
                ),
                SizedBox(
                  height: height * 30,
                ),
                RoundTextField(
                  hintText: 'Name',
                  keyBoardType: TextInputType.text,
                  controller: nameController,
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
                  hintText: 'Mobile No',
                  keyBoardType: TextInputType.phone,
                  controller: mobileNumberController,
                ),
                SizedBox(
                  height: height * 20,
                ),
                RoundTextField(
                  hintText: 'Address',
                  keyBoardType: TextInputType.text,
                  controller: addressController,
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
                  height: height * 20,
                ),
                RoundTextField(
                  hintText: 'Confirm Password',
                  keyBoardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obsecureText: true,
                ),
                SizedBox(
                  height: height * 30,
                ),
                RoundButton(onPressed: () {}, title: "Sign Up"),
                SizedBox(
                  height: height * 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: width * 14,
                          fontWeight: FontWeight.w500,
                          color: TColor.secondaryText,
                        ),
                      ),
                      SizedBox(
                        width: width * 10,
                      ),
                      Text(
                        'Login',
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
      ),
    );
  }
}
