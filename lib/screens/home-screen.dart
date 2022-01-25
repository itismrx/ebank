import 'package:ebank/constant.dart';
import 'package:ebank/screens/landing-screen.dart';
import 'package:ebank/screens/stastics-screen.dart';
import 'package:ebank/screens/transfer-screen.dart';
import 'package:ebank/screens/under-development.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

// import 'package:flutterl';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        LandingScreen(),
        UnderDevelopment(),
        UnderDevelopment(),
        StasticsScreen(),
        UnderDevelopment()

        // Text('Index Item 2')
      ];
    }

    List<PersistentBottomNavBarItem> _navBarItems() {
      return [
        PersistentBottomNavBarItem(
          // icon: Icon(Icons.home),
          icon: Icon(Ionicons.ios_notifications_outline),
          inactiveIcon: Icon(Icons.home_filled),
          // activeColorSecondary: Colors.green,
          activeColorPrimary: kBlueColor,
          inactiveColorPrimary: kTabColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Ionicons.wallet),
          inactiveIcon: Icon(Ionicons.wallet_outline),
          activeColorPrimary: kBlueColor,
          inactiveColorPrimary: kTabColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.qr_code_scanner_rounded,
            // FlutterIcons
            color: Colors.white,
          ),
          activeColorPrimary: kBlueColor,
          inactiveColorPrimary: kBlueColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Entypo.line_graph),
          //*Ionicons.wallet_outline
          //Entypo.line
          //Foundation.home
          //Feather.home
          // icon: Image.asset(
          //   "asset/images/icons/statistics.png",
          //   height: 24,
          //   width: 24,
          // ),
          activeColorPrimary: kBlueColor,
          inactiveColorPrimary: kTabColor,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(FontAwesomeIcons.user),
          activeColorPrimary: kBlueColor,
          inactiveColorPrimary: kTabColor,
        )
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      navBarStyle: NavBarStyle.style15,
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(15),
          colorBehindNavBar: Colors.white),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(microseconds: 200),
      ),
    );
  }
}
