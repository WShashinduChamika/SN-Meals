import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/common_wdigets/round_icon_button.dart';
import 'package:sn_meals/screens/more/add_card_screen.dart';

class PaymentDetailsSreen extends StatefulWidget {
  const PaymentDetailsSreen({super.key});

  @override
  State<PaymentDetailsSreen> createState() => _PaymentDetailsSreenState();
}

class _PaymentDetailsSreenState extends State<PaymentDetailsSreen> {
  List cardArr = [
    {"icon": "assets/img/more/visa_card.png", "card": "*** *** **** 567"},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: height * 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/img/more/back.png',
                      height: height * 25,
                      width: width * 25,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: width * 20,
                  ),
                  Text(
                    'Payment Details',
                    style: TextStyle(
                      fontSize: width * 22,
                      fontWeight: FontWeight.w600,
                      color: TColor.primaryText,
                    ),
                  ),
                  SizedBox(
                    width: width * 100,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/img/more/cart.png',
                      height: height * 20,
                      width: width * 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 20,
                  vertical: height * 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 10,
                    ),
                    Text(
                      "Cusstomize your payment method",
                      style: TextStyle(
                        fontSize: width * 17,
                        fontWeight: FontWeight.w700,
                        color: TColor.primaryText,
                      ),
                    ),
                    SizedBox(
                      height: height * 10,
                    ),
                    Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: height * 1,
                    ),
                    SizedBox(
                      height: height * 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: TColor.textField,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15,
                                offset: Offset(0, 9))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 25, vertical: height * 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cash / Card on Delivery",
                                  style: TextStyle(
                                    fontSize: width * 12,
                                    fontWeight: FontWeight.w700,
                                    color: TColor.primaryText,
                                  ),
                                ),
                                Image(
                                  image: AssetImage("assets/img/more/tik.png"),
                                  height: height * 11.3,
                                  width: width * 13.2,
                                  color: TColor.primary,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 25, vertical: height * 10),
                            child: Divider(
                              color: TColor.secondaryText.withOpacity(0.4),
                              height: height * 1,
                            ),
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: cardArr.length,
                            itemBuilder: ((contex, index) {
                              var obj = cardArr[index] as Map? ?? {};
                              return Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: height * 10,
                                  horizontal: width * 25,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: AssetImage(obj["icon"]),
                                      width: width * 53,
                                      height: height * 31,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(
                                      width: width * 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        obj["card"],
                                        style: TextStyle(
                                          fontSize: width * 12,
                                          fontWeight: FontWeight.w700,
                                          color: TColor.primaryText,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: height * 30,
                                      width: width * 116,
                                      child: RoundButton(
                                        onPressed: () {},
                                        title: "Delete Card",
                                        type: RoundButtonType.textPrimary,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 25,
                              vertical: height * 10,
                            ),
                            child: Divider(
                              color: TColor.secondaryText.withOpacity(0.4),
                              height: height * 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 25, vertical: height * 10),
                            child: Text(
                              "Other Methods",
                              style: TextStyle(
                                fontSize: width * 12,
                                fontWeight: FontWeight.w700,
                                color: TColor.primaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 40,
                    ),
                    RoundIconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          scrollControlDisabledMaxHeightRatio: height * 400,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return const AddCardScreen();
                          },
                        );
                      },
                      title: "Add another credit/debit card",
                      icon: "assets/img/more/add.png",
                      clr: TColor.primary,
                      fontSize: width * 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
