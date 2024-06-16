import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final TextInputType? keyBoardType;
  final bool obsecureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.title = '',
    required this.keyBoardType,
    this.obsecureText = false,
    this.bgColor,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textField,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: EdgeInsets.only(left: width * 10),
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(
                    top: height * 10,
                  ),
                  height: height * 50,
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    obscureText: obsecureText,
                    keyboardType: keyBoardType,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: width * 20, vertical: height * 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: left,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        fontSize: width * 14,
                        fontWeight: FontWeight.w300,
                        color: TColor.secondaryText,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: width * 20, top: height * 12),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: width * 10,
                      fontWeight: FontWeight.w200,
                      color: TColor.secondaryText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
