import 'package:flutter/cupertino.dart';

class AppProvider extends ChangeNotifier {
  // Moody App
  int currentIndex = 0;
  int sliderIndex = 0;

  void changeIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }

  void onChangeSlider(int newIndex) {
    sliderIndex = newIndex;
    notifyListeners();
  }

  // Workout App
  int workoutBottomNavBarIndex = 0;

  void changeWorkoutBottomNavIndex(int newIndex) {
    workoutBottomNavBarIndex = newIndex;
    notifyListeners();
  }

  // News App
  int newsBottomNavBarIndex = 0;

  void changeNewsBottomNavIndex(int newIndex) {
    newsBottomNavBarIndex = newIndex;
    notifyListeners();
  }

  void onTabClicked(List<bool> list, int index) {
    list[index] = !list[index];
    notifyListeners();
  }
}