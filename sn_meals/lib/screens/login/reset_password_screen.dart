import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  TextEditingController emailController = TextEditingController();

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
                'Reset Password',
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
                hintText: 'Email',
                keyBoardType: TextInputType.emailAddress,
                controller: emailController,
              ),
              SizedBox(
                height: height * 20,
              ),
              
              RoundButton(onPressed: () {
                
              }, title: "Send"),
              
            ],
          ),
        ),
      ),
    );
  }
}