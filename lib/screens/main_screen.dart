import 'package:flutter/material.dart';
import 'package:flutter_green_wallet_ui/screens/first_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        FirstScreen(),
        FirstScreen(),
        FirstScreen(),
        FirstScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home),
          title: ("Home"),
          activeColorPrimary: Color(0xFFb9e67a),
          inactiveColorPrimary: Colors.grey[800],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: ("wallet"),
          activeColorPrimary: Color(0xFFb9e67a),
          inactiveColorPrimary: Colors.grey[800],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.insert_chart_sharp),
          title: ("chart"),
          activeColorPrimary: Color(0xFFb9e67a),
          inactiveColorPrimary: Colors.grey[800],
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.settings),
          title: ("setting"),
          activeColorPrimary: Color(0xFFb9e67a),
          inactiveColorPrimary: Colors.grey[800],
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style13, // Choose the nav bar style with this property.
    );
  }
}
