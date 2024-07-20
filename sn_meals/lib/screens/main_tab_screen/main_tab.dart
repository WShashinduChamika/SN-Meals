import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sn_meals/common/color_extention.dart';
import 'package:sn_meals/common_wdigets/tab_button.dart';
import 'package:sn_meals/screens/home/home_screen.dart';
import 'package:sn_meals/screens/menu/menu.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int selectTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width / 375;
    double height = MediaQuery.of(context).size.height / 800;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageScreen),
      backgroundColor: const Color(0xFFF5F5F5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        height: height * 65,
        width: width * 65,
        child: FloatingActionButton(
          backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageScreen = const HomeScreen();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          child: Image(
            image: const AssetImage('assets/img/mian_tab/home_tab.png'),
            width: width * 30,
            height: height * 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        notchMargin: height * 15,
        height: screenHeight>=800? height * 64 : height*80,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                onTap: () {
                  if (selectTab != 0) {
                    selectTab = 0;
                    selectPageScreen = const MenuScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                icon: 'assets/img/mian_tab/menu_tab.png',
                title: 'Menu',
                isSelected: selectTab == 0,
              ),
              TabButton(
                onTap: () {
                  if (selectTab != 1) {
                    selectTab = 1;
                    //selectPageScreen = const OffersScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                icon: 'assets/img/mian_tab/offer_tab.png',
                title: 'Offer',
                isSelected: selectTab == 1,
              ),
              SizedBox(width: width*40,height: height*40,),
              TabButton(
                onTap: () {
                  if (selectTab != 3) {
                    selectTab = 3;
                    //selectPageScreen = const ProfileScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                icon: 'assets/img/mian_tab/profile_tab.png',
                title: 'Profile',
                isSelected: selectTab == 3,
              ),
              TabButton(
                onTap: () {
                  if (selectTab != 4) {
                    selectTab = 4;
                    //selectPageScreen = const MoreScreen();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                icon: 'assets/img/mian_tab/more_tab.png',
                title: 'More',
                isSelected: selectTab == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
