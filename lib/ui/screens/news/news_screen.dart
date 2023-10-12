import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/providers/app_provider.dart';
import 'package:quiz_1/ui/screens/news/chat/chat_screen.dart';
import 'package:quiz_1/ui/screens/news/insights/insights_screen.dart';
import 'package:quiz_1/ui/screens/news/today/today_screen.dart';

class NewsScreen extends StatelessWidget {

  static const String routeName = 'news';

  List<Widget> screens = [
    TodayScreen(),
    InsightsScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,

        title: Image.asset('assets/images/logo.png'),
        ),

      bottomNavigationBar: BottomNavBarBuilder(context, provider),

      body: screens[provider.newsBottomNavBarIndex],
    );
  }

  Widget BottomNavBarBuilder(BuildContext context, AppProvider provider) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: BottomNavigationBar(
        unselectedItemColor: Color(0xff475467),
        selectedItemColor: Color(0xff6941C6),

        currentIndex: provider.newsBottomNavBarIndex,
        
        onTap: (newIndex) => provider.changeNewsBottomNavIndex(newIndex),

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/calender_icon.png')),
            label: 'Today'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/grid_icon.png')),
              label: 'Insights'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/chat_icon.png')),
              label: 'Chat'
          ),
        ],
      ),
    );
  }
}
