import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';

class TitleRow extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const TitleRow({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height / 800;
    double width = MediaQuery.of(context).size.width / 375;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: width * 20,
              fontWeight: FontWeight.w600,
              color: TColor.primaryText,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "View all",
              style: TextStyle(
                color: TColor.primary,
                fontSize: width * 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
