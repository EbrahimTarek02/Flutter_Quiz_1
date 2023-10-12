import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/providers/app_provider.dart';
import 'package:quiz_1/ui/screens/mental_health/mental_health_screen.dart';
import 'package:quiz_1/ui/screens/news/news_screen.dart';
import 'package:quiz_1/ui/screens/workout/workout_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      routes: {
        MentalHealthScreen.routeName : (_) => MentalHealthScreen(),
        WorkoutScreen.routeName : (_) => WorkoutScreen(),
        NewsScreen.routeName : (_) => NewsScreen()
      },

      initialRoute: MentalHealthScreen.routeName,
    );
  }
}