import 'package:flutter/material.dart';
import 'package:sn_meals/common/color_extention.dart';

class CategoryCollectionType extends StatelessWidget {
  final Map obj;
  final VoidCallback onTap;
  const CategoryCollectionType({
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
        margin: EdgeInsets.symmetric(horizontal: width * 8),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image(
                image: AssetImage(obj["img"].toString()),
                width: width * 80,
                height: height * 80,
              ),
            ),
            SizedBox(
              height: height * 8,
            ),
            Text(
              obj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: width * 17,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
