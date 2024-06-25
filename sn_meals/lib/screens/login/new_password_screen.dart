import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
                'New Password',
                style: TextStyle(
                  fontSize: width * 30,
                  fontWeight: FontWeight.w800,
                  color: TColor.primaryText,
                ),
              ),
               SizedBox(
                height: height * 10,
              ),
              Text(
                'Please enter your email to receive a \nlink to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText,
                ),
              ),
              SizedBox(
                height: height * 70,
              ),
              RoundTextField(
                hintText: 'Password',
                keyBoardType: TextInputType.emailAddress,
                controller: passwordController,
              ),
              SizedBox(
                height: height * 20,
              ),
               RoundTextField(
                hintText: 'Confirm Password',
                keyBoardType: TextInputType.emailAddress,
                controller: confirmPasswordController,
              ),
              SizedBox(
                height: height * 20,
              ),
              RoundButton(onPressed: () {}, title: "Next"),
              
            ],
          ),
        ),
      ),
    );
  }
}