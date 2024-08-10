import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  List orderArr = [
    {"name": "Beef Burger", "qty": "1", "price": 16.0},
    {"name": "Classic Burger", "qty": "1", "price": 14.0},
    {"name": "Cheese Chicken Burger", "qty": "1", "price": 17.0},
    {"name": "Chicken Legs Basket", "qty": "1", "price": 15.0},
    {"name": "French Fires Large", "qty": "1", "price": 6.0}
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
                vertical: height * 10,
              ),
              child: Row(
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
                    'My Order',
                    style: TextStyle(
                      fontSize: width * 22,
                      fontWeight: FontWeight.w600,
                      color: TColor.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 30,
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: const AssetImage(
                                "assets/img/more/order_item.png"),
                            height: height * 80,
                            width: width * 80,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: width * 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "King Burgers",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: width * 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: const AssetImage(
                                        "assets/img/more/rate.png"),
                                    height: height * 14,
                                    width: width * 14,
                                    color: TColor.primary,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: width * 5,
                                  ),
                                  Text(
                                    "4.9",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.primary,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 8,
                                  ),
                                  Text(
                                    "(124 ratings)",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Burger",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 8,
                                  ),
                                  Text(
                                    ".",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.primary,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Western Food",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: const AssetImage(
                                        "assets/img/more/location.png"),
                                    height: height * 10,
                                    width: width * 13,
                                    color: TColor.primary,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    width: width * 5,
                                  ),
                                  Text(
                                    "No 03, 4th Lane, Newyork",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: width * 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 10,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 30,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: orderArr.length,
                      itemBuilder: (context, index) {
                        var orderObj = orderArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: width * 375,
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 15,
                                    horizontal: width * 35),
                                color: TColor.textField.withOpacity(0.5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${orderObj["name"].toString()} x${orderObj["qty"].toString()}",
                                        style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "\$${orderObj["price"].toString()}",
                                      style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: width * 35),
                                child: Divider(
                                  color: TColor.secondaryText.withOpacity(0.4),
                                  height: height * 1,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: height * 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 35,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Delivery Instructions",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: width * 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 30,
                          ),
                          Image(
                            image: AssetImage("assets/img/more/add.png"),
                            color: TColor.primary,
                            height: height * 8,
                            width: width * 8,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: width * 10,
                          ),
                          Text(
                            "Add Notes",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: width * 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 35,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Subtotal",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: width * 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 30,
                          ),
                          Text(
                            "\$68",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: width * 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 10,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 35,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Delivery Cost",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: width * 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 30,
                          ),
                          Text(
                            "\$2",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: width * 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 35,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Total",
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: width * 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 30,
                          ),
                          Text(
                            "\$68",
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: width * 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 35,
                      ),
                      child: RoundButton(onPressed: () {}, title: "Check Out"),
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
