import 'package:flutter/cupertino.dart';
import 'package:sn_meals/common/color_extention.dart';

class PopularResturant extends StatelessWidget {
  final Map obj;
  final VoidCallback onTap;
  const PopularResturant({
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
        margin: EdgeInsets.symmetric(vertical: height*10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image(
                image: AssetImage(obj["img"].toString()),
                width: width * 375,
                height: height * 193,
                fit: BoxFit.cover,
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
                fontSize: width * 16,
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
                  image: const AssetImage('assets/img/home_screen/rate.png'),
                  height: height * 10,
                  width: width * 10,
                ),
                SizedBox(width: width * 4),
                Text(
                  obj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: width * 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: width * 4),
                Text(
                  '(${obj["rating"]} Ratings)',
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: width * 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: width*10,),
                Text(
                  obj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.secondaryText,
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
                    color: TColor.secondaryText,
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
    );
  }
}
