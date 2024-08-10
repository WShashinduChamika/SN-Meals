import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String icon;
  final Color? clr;
  final double fontSize;
  const RoundIconButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    required this.clr,
    this.fontSize = 12
  });

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: height * 56,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage(icon),
              width: width * 16,
              height: height * 16,
              fit: BoxFit.contain,
            ),
            SizedBox(
              width: width * 10,
            ),
            Text(
              title,
              style: TextStyle(
                color: TColor.textField,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
