import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_icon_button.dart';
import 'package:sn_meals/screens/home/home_screen.dart';
import 'package:sn_meals/screens/menu/menu_item_list.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    int qty = 1;
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return SafeArea(
      child: Scaffold(
        //backgroundColor: const Color(0xFFF5F5F5),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image(
              image: const AssetImage('assets/img/menu/pizza.png'),
              height: height * 365,
              width: width * 375,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.topCenter,
              width: double.maxFinite,
              height: height * 365,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 20,
                ),
                child: Container(
                  margin: EdgeInsets.only(top: height * 100),
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 180,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(width * 42),
                            topRight: Radius.circular(width * 42),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 30,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Text(
                                'Thandhuri Chicken Pizza',
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: width * 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        //unratedColor: Colors.amber.withAlpha(50),
                                        itemCount: 5,
                                        itemSize: width * 18,
                                        itemPadding:
                                            EdgeInsets.only(right: width * 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: TColor.primary,
                                        ),
                                        onRatingUpdate: (rating) {
                                          setState(() {
                                            //_rating = rating;
                                          });
                                        },
                                        updateOnDrag: true,
                                      ),
                                      SizedBox(
                                        height: height * 4,
                                      ),
                                      Text(
                                        '4 Star Ratings',
                                        style: TextStyle(
                                          color: TColor.primary,
                                          fontSize: width * 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height * 10,
                                      ),
                                      Text(
                                        'Rs. 750',
                                        style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: width * 31,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '/ Per Portion',
                                        style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: width * 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 10,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Text(
                                'Description',
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: width * 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 10,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: width * 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 25,
                              ),
                              child: Divider(
                                height: height * 1,
                                color: TColor.secondaryText.withOpacity(0.4),
                              ),
                            ),
                            SizedBox(
                              height: height * 20,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Text(
                                'Customize Your Order',
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: width * 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 20,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 15),
                                decoration: BoxDecoration(
                                  color: TColor.textField,
                                  borderRadius:
                                      BorderRadius.circular(width * 5),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    items: ["small", "big"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: width * 14,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (val) {},
                                    hint: Text(
                                      'Select portion type',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: width * 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 20,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 15),
                                decoration: BoxDecoration(
                                  color: TColor.textField,
                                  borderRadius:
                                      BorderRadius.circular(width * 5),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    isExpanded: true,
                                    items: ["small", "big"].map((e) {
                                      return DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: width * 14,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (val) {},
                                    hint: Text(
                                      'Select portion type',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: width * 14),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 30,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Number of Portions',
                                    style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: width * 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          qty = qty - 1;
                                          if (qty < 1) {
                                            qty = 1;
                                          }
                                          setState(() {
                                            print(qty);
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 20),
                                          height: height * 30,
                                          decoration: BoxDecoration(
                                            color: TColor.primary,
                                            borderRadius: BorderRadius.circular(
                                                width * 15),
                                          ),
                                          child: Text(
                                            '-',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 5,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 20),
                                        height: height * 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(width * 15),
                                          border:
                                              Border.all(color: TColor.primary),
                                        ),
                                        child: Text(
                                          qty.toString(),
                                          style: TextStyle(
                                            color: TColor.primary,
                                            fontSize: width * 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 5,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          qty = qty + 1;
                                          setState(() {});
                                          print(qty);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: width * 20),
                                          height: height * 30,
                                          decoration: BoxDecoration(
                                            color: TColor.primary,
                                            borderRadius: BorderRadius.circular(
                                                width * 15),
                                          ),
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height * 20,
                            ),
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  width: width * 97,
                                  height: height * 171,
                                  decoration: BoxDecoration(
                                      color: TColor.primary,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(width * 38),
                                        bottomRight:
                                            Radius.circular(width * 38),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 7,
                                          offset: Offset(0, 4),
                                        ),
                                      ]),
                                ),
                                Center(
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: height * 8,
                                          bottom: height * 8,
                                          right: width * 20,
                                        ),
                                        width: width * 375 - 100,
                                        height: height * 122,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(40),
                                                bottomLeft: Radius.circular(40),
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 7,
                                                offset: Offset(0, 4),
                                              ),
                                            ]),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Total Price",
                                              style: TextStyle(
                                                  color: TColor.primaryText,
                                                  fontSize: width * 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: height * 4,
                                            ),
                                            Text(
                                              "LKR 1500",
                                              style: TextStyle(
                                                color: TColor.primaryText,
                                                fontSize: width * 22,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 4,
                                            ),
                                            SizedBox(
                                              height: height * 30,
                                              width: width * 157,
                                              child: RoundIconButton(
                                                clr: TColor.primary,
                                                onPressed: () {},
                                                title: "Add to Cart",
                                                icon:
                                                    'assets/img/menu/add_cart.png',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: width * 33,
                                        height: height * 33,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                width * 15),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 7,
                                                offset: Offset(0, 4),
                                              ),
                                            ]),
                                        alignment: Alignment.center,
                                        child: Image(
                                          image: const AssetImage(
                                              'assets/img/menu/cart.png'),
                                          width: width * 20,
                                          height: height * 20,
                                          color: TColor.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 20,
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
                        'assets/img/menu/back.png',
                        height: height * 25,
                        width: width * 25,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Hello");
                      },
                      child: Image.asset(
                        'assets/img/home_screen/cart.png',
                        height: height * 25,
                        width: width * 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
