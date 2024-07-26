import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/screens/menu/menu_item_list.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List moreArr = [
    {
      "name": "Payments",
      "image": "assets/img/more/payment.png",
    },
    {
      "name": "My Orders",
      "image": "assets/img/more/shopping_bag.png",
    },
    {
      "name": "Notifications",
      "image": "assets/img/more/notifications.png",
    },
    {
      "name": "Inbox",
      "image": "assets/img/more/inbox.png",
    },
    {
      "name": "About Us",
      "image": "assets/img/more/about_us.png",
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
                  EdgeInsets.symmetric(horizontal: 12, vertical: height * 20),
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
                    'assets/img/more/cart.png',
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
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.symmetric(
                            vertical: height * 10, horizontal: width * 20),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: moreArr.length,
                        itemBuilder: (context, index) {
                          var moreObj = moreArr[index] as Map? ?? {};
                          return InkWell(
                            onTap: () {
                              switch (index.toString()) {
                                case "0":
                                  print("Payments");
                                  
                                  break;
                    
                                case "1":
                                  
                                  break;
                    
                                case "2":
                                  print("Payments");
                                  
                                  break;
                    
                                case "3":
                                  print("Payments");
                                  
                                  break;
                    
                                case "4":
                                  print("Payments");
                                 
                                  break;
                              }
                            },
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: height * 12,
                                    bottom: height * 12,
                                    right: width * 20,
                                  ),
                                  width: width * 317,
                                  height: height * 90,
                                  decoration: BoxDecoration(
                                      color: TColor.textField,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(7),
                                      ),
                                      boxShadow: const [
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
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: width * 10,
                                      ),
                                      width: width * 53,
                                      height: height * 53,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFD8D8D8),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                          child: Image(
                                        image: AssetImage(moreObj["image"]),
                                        width: 29,
                                        height: 29,
                                      )),
                                    ),
                                    SizedBox(
                                      width: width * 15,
                                    ),
                                    Expanded(
                                      child: Text(
                                        moreObj["name"],
                                        style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    if (moreObj["name"] == "Notifications")
                                      (Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(
                                          right: width * 20,
                                        ),
                                        height: height * 20,
                                        width: width * 20,
                                        decoration: BoxDecoration(
                                          color: TColor.primary,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          '15',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )),
                                    Container(
                                      width: width * 33,
                                      height: height * 33,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFF6F6F6),
                                          borderRadius:
                                              BorderRadius.circular(width * 15),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 7,
                                              offset: Offset(0, 4),
                                            ),
                                          ]),
                                      child: Center(
                                        child: Image(
                                          image:
                                              AssetImage('assets/img/more/more_next2.png'),
                                          width: width * 11,
                                          height: height * 11,
                                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
