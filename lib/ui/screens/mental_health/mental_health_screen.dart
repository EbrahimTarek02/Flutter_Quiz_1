import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/providers/app_provider.dart';
import 'package:quiz_1/ui/screens/mental_health/calender/calender_screen.dart';
import 'package:quiz_1/ui/screens/mental_health/grid/grid_screen.dart';
import 'package:quiz_1/ui/screens/mental_health/home/home_screen.dart';
import 'package:quiz_1/ui/screens/mental_health/profile/profile_screen.dart';

class MentalHealthScreen extends StatelessWidget {

  static const String routeName = 'mental health';
  List <Widget> screens = [
    HomeScreen(),
    GridScreen(),
    CalenderScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0.0,

        leading: Image.asset('assets/images/leaves_icon.png'),

        title: Text(
          'Moody',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
        ),

        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Badge(
                backgroundColor: Colors.red[300],
                smallSize: 10,
                child: Image.asset(
                  'assets/images/notification_icon.png',
                  scale: 0.8,
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: bottomNavBarBuilder(context, provider),

      body: screens[provider.currentIndex],
    );
  }

  Widget bottomNavBarBuilder(BuildContext context, AppProvider provider) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),

      child: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,

        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),

        currentIndex: provider.currentIndex,

        onTap: (newIndex) {
          provider.changeIndex(newIndex);
        },

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home_icon.png'),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/grid_icon.png'),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/calender_icon.png'),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/profile_icon.png'),
            ),
            label: '.',
          ),
        ],
      ),
    );
  }
}
