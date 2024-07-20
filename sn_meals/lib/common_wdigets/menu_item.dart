import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';

class MenuItem extends StatelessWidget {

  final Map obj;
  final VoidCallback onTap;
  const MenuItem({
    super.key,
    required this.obj,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height / 800;
    double width = MediaQuery.of(context).size.width / 375;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: height * 10),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image(
              image: AssetImage(obj["img"].toString()),
              width: width * 375,
              height: height * 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        obj["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: height * 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('assets/img/menu/rate.png'),
                            height: height * 10,
                            width: width * 10,
                          ),
                          SizedBox(width: width * 4),
                          Text(
                            obj["rate"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: width * 4),
                          Text(
                            '(${obj["rating"]} Ratings)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: width * 10,
                          ),
                          Text(
                            obj["type"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: width * 4),
                          Text(
                            '.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: width * 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: width * 4),
                          Text(
                            obj["food_type"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: width * 12),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height*22,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
