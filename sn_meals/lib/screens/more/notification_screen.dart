import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List notificationsArr = [
    {
      "name": "Your order is in process",
      "time": "12.30",
    },
    {
      "name": "Your order is in process",
      "time": "12.35",
    },
    {
      "name": "Your order is in process",
      "time": "12.40",
    },
    {
      "name": "Your order is in process",
      "time": "12.50",
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return Scaffold(
     
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
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: width * 22,
                    fontWeight: FontWeight.w600,
                    color: TColor.primaryText,
                  ),
                ),
                Image.asset(
                  'assets/img/more/notifications.png',
                  height: height * 20,
                  width: width * 20,
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
                    SizedBox(
                      height: height * 0,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.symmetric(
                          vertical: height * 30, horizontal: width * 20),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: notificationsArr.length,
                      itemBuilder: (context, index) {
                        var notiObj = notificationsArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {
                           
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 10,
                              vertical: height * 20,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 10,
                                  width: width * 10,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: TColor.primary,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      notiObj["name"],
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: width*14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      notiObj["time"],
                                      style: TextStyle(
                                        color: TColor.placeholder,
                                        fontSize: width*12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
    );
  }
}
