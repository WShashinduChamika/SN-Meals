import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const fillColor = Color.fromRGBO(243, 246, 249, 0);
  static const borderColor = Color.fromRGBO(154, 3, 30, 0.547);

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color(0xFF4A4B4D),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: borderColor),
    ),
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 30, vertical: height * 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 60,
              ),
              Text(
                'We have sent an OTP to your Mobile',
                textAlign: TextAlign.center,
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
                'Please check your mobile number 071*****12 \ncontinue to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: width * 14,
                  fontWeight: FontWeight.w500,
                  color: TColor.secondaryText,
                ),
              ),
              SizedBox(
                height: height * 40,
              ),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                      border:
                          Border.all(color: Color.fromRGBO(154, 3, 30, 1)),),
                ),
                onCompleted: (value) {
                  debugPrint(value);
                  setState(() {
                    //receviedOTP = value;
                  });
                },
              ),
              SizedBox(
                height: height * 30,
              ),
              RoundButton(
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewPasswordScreen() ));
                  },
                  title: "Send"),
              SizedBox(
                height: height * 30,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Didn\'t recieve?',
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
                      'Click Here',
                      style: TextStyle(
                        fontSize: width * 14,
                        fontWeight: FontWeight.w600,
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
