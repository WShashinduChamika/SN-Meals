import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String title;
  final bool isSelected;

  const TabButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;
    return GestureDetector(
      onTap:onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(icon),
            width: width * 15,
            height: height * 15,
            color: isSelected? TColor.primary: TColor.placeholder,
          ),
          SizedBox(
            height: height * 4,
          ),
          Text(
             title,
            style: TextStyle(
              fontSize: width * 12,
              fontWeight: FontWeight.w500,
              color: isSelected? TColor.primary: TColor.placeholder,
            ),
          )
        ],
      ),
    );
  }
}
