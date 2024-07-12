import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/catergory_collection_type.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common/most_popular_resturant.dart';
import 'package:sn_meals/common/popular_resturant.dart';
import 'package:sn_meals/common/resent%20_items.dart';
import 'package:sn_meals/common/title_row.dart';
import 'package:sn_meals/common_wdigets/round_textfield.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categoryArr = [
    {"img": "assets/img/home_screen/offer.png", "name": "Offers"},
    {"img": "assets/img/home_screen/sri_lankan.png", "name": "Sri Lankan"},
    {"img": "assets/img/home_screen/italian.png", "name": "Italian"},
    {"img": "assets/img/home_screen/indian.png", "name": "Indian"},
  ];

  List popularArr = [
    {
      "img": "assets/img/home_screen/res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "img": "assets/img/home_screen/res_2.png",
      "name": "Caafe de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "img": "assets/img/home_screen/res_3.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    }
  ];

  List mpopularArr = [
    {
      "img": "assets/img/home_screen/m_res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "img": "assets/img/home_screen/m_res_2.png",
      "name": "Cafe De Bamba",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    }
  ];

  List recentArr = [
    {
      "img": "assets/img/home_screen/item_1.png",
      "name": "Mulbery Pizza by josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "img": "assets/img/home_screen/item_2.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    },
    {
      "img": "assets/img/home_screen/item_3.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food",
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;

    return Scaffold(
      //backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Good morning Shashindu !',
          style: TextStyle(
            fontSize: width * 20,
            fontWeight: FontWeight.w800,
            color: TColor.primaryText,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 8),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/img/home_screen/cart.png',
                height: height * 25,
                width: width * 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 20,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery to',
                      style: TextStyle(
                        fontSize: width * 11,
                        color: TColor.secondaryText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: width * 20,
                            fontWeight: FontWeight.w800,
                            color: TColor.secondaryText,
                          ),
                        ),
                        SizedBox(
                          width: width * 30,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/img/home_screen/drop_down.png',
                            height: height * 15,
                            width: width * 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 15),
                child: RoundTextField(
                  hintText: 'Search Food',
                  keyBoardType: TextInputType.name,
                  left: Container(
                    alignment: Alignment.center,
                    width: width * 30,
                    child: Image.asset(
                      'assets/img/home_screen/search_icon.png',
                      height: height * 20,
                      width: width * 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 30,
              ),
              SizedBox(
                height: height * 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: width * 15),
                  itemCount: categoryArr.length,
                  itemBuilder: ((contex, index) {
                    var cObj = categoryArr[index] as Map? ?? {};
                    return CategoryCollectionType(obj: cObj, onTap: () {});
                  }),
                ),
              ),
              TitleRow(
                title: 'Popular Resturants',
                onPressed: () {},
              ),
               ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: width * 15),
                itemCount: popularArr.length,
                itemBuilder: ((contex, index) {
                  var cObj = popularArr[index] as Map? ?? {};
                  return PopularResturant(
                    obj: cObj,
                    onTap: () {},
                  );
                }),
              ),
              TitleRow(
                title: 'Most Popular',
                onPressed: () {},
              ),
              SizedBox(
                height: height * 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: width * 15),
                  itemCount: mpopularArr.length,
                  itemBuilder: ((contex, index) {
                    var cObj = mpopularArr[index] as Map? ?? {};
                    return MostPopularResturant(
                      obj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              SizedBox(
                height: height * 20,
              ),
              TitleRow(
                title: 'Recent Items',
                onPressed: () {},
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: width * 15),
                itemCount: recentArr.length,
                itemBuilder: ((contex, index) {
                  var cObj = recentArr[index] as Map? ?? {};
                  return RecentItems(
                    obj: cObj,
                    onTap: () {},
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
