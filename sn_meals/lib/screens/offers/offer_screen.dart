import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/offer_item.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  List offerArr = [
    {
      "img": "assets/img/offer_screen/offer_1.png",
      "name": "Café de Noires",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "img": "assets/img/offer_screen/offer_2.png",
      "name": "Isso",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "img": "assets/img/offer_screen/offer_3.png",
      "name": "Cafe Beans",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "img": "assets/img/offer_screen/offer_1.png",
      "name": "Café de Noires",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "img": "assets/img/offer_screen/offer_2.png",
      "name": "Isso",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "img": "assets/img/offer_screen/offer_3.png",
      "name": "Cafe Beans",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
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
              padding:
                  EdgeInsets.symmetric(horizontal: 12, vertical: height * 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Offers',
                    style: TextStyle(
                      fontSize: width * 22,
                      fontWeight: FontWeight.w600,
                      color: TColor.primaryText,
                    ),
                  ),
                  Image.asset(
                    'assets/img/offer_screen/cart.png',
                    height: height * 25,
                    width: width * 25,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 12),
                        child: Text(
                          "Find discounts, Offers special\nmeals and more!",
                          style: TextStyle(
                            fontSize: width * 14,
                            fontWeight: FontWeight.w500,
                            color: TColor.primaryText,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 12,
                        ),
                        child: SizedBox(
                          height: 35,
                          width: width * 157,
                          child: RoundButton(
                            onPressed: () {},
                            title: 'Check offers',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 20,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        //padding: EdgeInsets.symmetric(horizontal: width * 15),
                        itemCount: offerArr.length,
                        itemBuilder: ((contex, index) {
                          var cObj = offerArr[index] as Map? ?? {};
                          return OfferItem(
                            obj: cObj,
                            onTap: () {},
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
