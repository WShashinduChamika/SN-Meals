import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_icon_button.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardMonthController = TextEditingController();
  final TextEditingController _cardYearController = TextEditingController();
  final TextEditingController _cardSecurityCodeController =
      TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 25,
          vertical: height * 15,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(width * 20),
              topRight: Radius.circular(width * 20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Credit / Debit Card",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: width * 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: TColor.primaryText,
                    size: width * 25,
                  ),
                ),
              ],
            ),
            Divider(
              color: TColor.secondaryText.withOpacity(0.4),
              height: height * 1,
            ),
            SizedBox(
              height: height * 20,
            ),
            SizedBox(
              height: height * 55,
              child: RoundTextField(
                hintText: "Card Number",
                keyBoardType: TextInputType.number,
                controller: _cardNumberController,
              ),
            ),
            SizedBox(
              height: height * 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 10,
              ),
              child: Row(
                children: [
                  Text(
                    "Expiry",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: width * 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: height * 55,
                    width: width * 100,
                    child: RoundTextField(
                      hintText: "MM",
                      keyBoardType: TextInputType.datetime,
                      controller: _cardMonthController,
                    ),
                  ),
                  SizedBox(
                    width: width * 30,
                  ),
                  SizedBox(
                    height: height * 55,
                    width: width * 100,
                    child: RoundTextField(
                      hintText: "YYYY",
                      keyBoardType: TextInputType.datetime,
                      controller: _cardYearController,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 10,
            ),
            SizedBox(
              height: height * 55,
              child: RoundTextField(
                hintText: "Security Code",
                keyBoardType: TextInputType.number,
                controller: _cardSecurityCodeController,
              ),
            ),
            SizedBox(
              height: height * 10,
            ),
            SizedBox(
              height: height * 55,
              child: RoundTextField(
                hintText: "First Name",
                keyBoardType: TextInputType.text,
                controller: _firstNameController,
              ),
            ),
            SizedBox(
              height: height * 10,
            ),
            SizedBox(
              height: height * 55,
              child: RoundTextField(
                hintText: "Last Name",
                keyBoardType: TextInputType.text,
                controller: _lastNameController,
              ),
            ),
            SizedBox(
              height: height * 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width * 10,
              ),
              child: Row(
                children: [
                  Text(
                    "You can remove this card \n at any time",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: width * 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                      value: isAnyTime,
                      activeColor: TColor.primary,
                      onChanged: (value) {
                        setState(() {
                          isAnyTime = value;
                        });
                      }),
                ],
              ),
            ),
            SizedBox(
              height: height * 20,
            ),
            SizedBox(
              height: height * 55,
              child: RoundIconButton(
                onPressed: () {},
                title: "Add card",
                icon: "assets/img/more/add.png",
                clr: TColor.primary,
                fontSize: width * 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
