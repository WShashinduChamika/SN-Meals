import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';

class OnBoardInroPage extends StatelessWidget {
  final String img;
  final String headigng;
  final String text;

  const OnBoardInroPage({
    super.key,
    required this.img,
    required this.headigng,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    
    double height = MediaQuery.of(context).size.height / 800;
    double width = MediaQuery.of(context).size.width / 375;

    return Container(
      child: Stack(
        children: [
          Positioned(
            left: width * 75,
            top: height * 112,
            child: Image(
              image: AssetImage(img),
              width: width * 225.44,
              height: height * 294.81,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            alignment: Alignment(0,0.35),
            child: Text(
              headigng,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: width * 28,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            alignment: Alignment(0, 0.5),
            child: Text(
             text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: width * 13,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
