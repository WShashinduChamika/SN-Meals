import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';
import 'package:sn_meals/screens/menu/menu_item_list.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/img/menu/menu_1.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/img/menu/menu_2.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/img/menu/menu_3.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/img/menu/menu_4.png",
      "items_count": "25",
    },
  ];
  TextEditingController txtSearch = TextEditingController();

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
                  EdgeInsets.symmetric(horizontal: 20, vertical: height * 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                      fontSize: width * 22,
                      fontWeight: FontWeight.w600,
                      color: TColor.primaryText,
                    ),
                  ),
                  Image.asset(
                    'assets/img/home_screen/cart.png',
                    height: height * 25,
                    width: width * 25,
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height * 90),
                  width: width * 97,
                  height: height * 495,
                  decoration: BoxDecoration(
                      color: TColor.primary,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(width * 38),
                        bottomRight: Radius.circular(width * 38),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 7,
                          offset: Offset(0, 4),
                        ),
                      ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 15),
                          child: RoundTextField(
                            controller: txtSearch,
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
                          height: height * 40,
                        ),
                        ListView.builder(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 30, horizontal: width * 20),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: menuArr.length,
                          itemBuilder: (context, index) {
                            var menuObj = menuArr[index] as Map? ?? {};
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuItems(obj: menuObj)),
                            );
                              },
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
                                    height: height * 90,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(25),
                                            bottomLeft: Radius.circular(25),
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 7,
                                            offset: Offset(0, 4),
                                          ),
                                        ]),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(menuObj['image']),
                                        height: height * 70,
                                        width: width * 70,
                                        fit: BoxFit.contain,
                                      ),
                                      SizedBox(
                                        width: width * 15,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              menuObj["name"],
                                              style: TextStyle(
                                                  color: TColor.primaryText,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              "${menuObj["items_count"]} items",
                                              style: TextStyle(
                                                  color: TColor.secondaryText,
                                                  fontSize: 11),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: width * 33,
                                        height: height * 33,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(width * 15),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 7,
                                                offset: Offset(0, 4),
                                              ),
                                            ]),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/img/menu/next.png'),
                                          width: width * 5,
                                          height: height * 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
