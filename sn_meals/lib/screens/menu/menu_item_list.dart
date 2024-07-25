import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/menu_item.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';
import 'package:sn_meals/screens/menu/item_details.dart';

class MenuItems extends StatefulWidget {
  final Map obj;
  const MenuItems({
    super.key,
    required this.obj,
  });
  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  List menuItemsArr = [
    {
      "img": "assets/img/menu/dess_1.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_2.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_3.png",
      "name": "Street Shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Café Racer",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_4.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_1.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_2.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_3.png",
      "name": "Street Shake",
      "rate": "4.9",
      "rating": "124",
      "type": "Café Racer",
      "food_type": "Desserts"
    },
    {
      "img": "assets/img/menu/dess_4.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts"
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
                  EdgeInsets.symmetric(horizontal: 20, vertical: height * 30),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/menu/back.png',
                          height: height * 25,
                          width: width * 25,
                        ),
                        SizedBox(
                          width: width * 10,
                        ),
                        Text(
                          'Deserts',
                          style: TextStyle(
                            fontSize: width * 18,
                            fontWeight: FontWeight.w600,
                            color: TColor.primaryText,
                          ),
                        ),
                      ],
                    ),
                  )),
                  Image.asset(
                    'assets/img/home_screen/cart.png',
                    height: height * 25,
                    width: width * 25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 15),
              child: RoundTextField(
                hintText: 'Search Food',
                keyBoardType: TextInputType.name,
                left: Container(
                  alignment: Alignment.center,
                  width: width * 30,
                  child: Image.asset(
                    'assets/img/menu/search_icon.png',
                    height: height * 20,
                    width: width * 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 10,
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        //padding: EdgeInsets.symmetric(horizontal: width * 15),
                        itemCount: menuItemsArr.length,
                        itemBuilder: ((contex, index) {
                          var cObj = menuItemsArr[index] as Map? ?? {};
                          return MenuItem(
                            obj: cObj,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ItemDetails()));
                            },
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
