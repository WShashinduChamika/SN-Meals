import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/intro_page.dart';
import 'package:sn_meals/common_wdigets/round_button.dart';
import 'package:sn_meals/screens/login_screens/welcome_screen.dart';

//import 'package:sn_meals/screens/login/welcome_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  PageController _controller = PageController();
  bool isLastPage = false;
  bool hasBackPage = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 800;
    double width = MediaQuery.of(context).size.width / 375;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
                hasBackPage = (index == 1 || index == 2);
              });
            },
            children: const [
              OnBoardInroPage(
                img: 'assets/img/onboard_screen/intro1.png',
                headigng: 'Find Food You Love',
                text:
                    'Discover the best foods from over 1,000 \nrestaurants and fast delivery to your doorstep',
              ),
              OnBoardInroPage(
                img: 'assets/img/onboard_screen/intro2.png',
                headigng: 'Fast Delivery',
                text:
                    'Fast food delivery to your home, \noffice wherever you are',
              ),
              OnBoardInroPage(
                img: 'assets/img/onboard_screen/intro3.png',
                headigng: 'Live Tracking',
                text:
                    'Real time tracking of your food on the \napp once you placed the order',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.2),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: TColor.primary,
                  dotColor: TColor.textField,
                  dotHeight: height * 8,
                  dotWidth: width * 8,
                  paintStyle: PaintingStyle.fill),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 34),
            alignment: Alignment(0, 0.8),
            child: RoundButton(
              onPressed: () {
                if (isLastPage) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen()),
                  );
                } else {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                }
              },
              title: isLastPage ? 'Get Started' : 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
