import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';

enum RoundButtonType { bgPrimary, textPrimary }

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final RoundButtonType type;
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.type = RoundButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: screenHeight >= 800 ? height * 56 : height * 65,
        decoration: BoxDecoration(
          border: type == RoundButtonType.bgPrimary
              ? null
              : Border.all(color: TColor.primary),
          color:
              type == RoundButtonType.bgPrimary ? TColor.primary : Colors.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.bgPrimary
                ? TColor.textField
                : TColor.primary,
            fontSize: width * 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
