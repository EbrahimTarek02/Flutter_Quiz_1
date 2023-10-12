import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/ui/screens/workout/chart_workout/chart_workout_screen.dart';
import 'package:quiz_1/ui/screens/workout/home_workout/home_workout_screen.dart';
import 'package:quiz_1/ui/screens/workout/message_workout/message_workout_screen.dart';
import 'package:quiz_1/ui/screens/workout/profile_workout/profile_workout_screen.dart';
import '../../../providers/app_provider.dart';

class WorkoutScreen extends StatelessWidget {

  static const String routeName = 'workout';

  List <Widget> screens = [
    HomeWorkoutScreen(),
    MessageWorkoutScreen(),
    ChartWorkoutScreen(),
    ProfileWorkoutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0.0,

        title: Row(
          children: [
            Image.asset('assets/images/profile_image.png'),
            SizedBox(width: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, Jade',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  'Ready to workout ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ],
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

      body: screens[provider.workoutBottomNavBarIndex],
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

        currentIndex: provider.workoutBottomNavBarIndex,

        onTap: (newIndex) {
          provider.changeWorkoutBottomNavIndex(newIndex);
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
              AssetImage('assets/images/message_icon.png'),
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/chart_icon.png'),
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
