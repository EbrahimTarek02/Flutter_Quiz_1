import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_1/providers/app_provider.dart';

class HomeWorkoutScreen extends StatelessWidget {

  List<String> tabsList = [
    'All Types',
    'Full Body',
    'Upper',
    'Lower'
  ];

  List <String> imagePaths = [
    'assets/images/yoga1_image.png',
    'assets/images/yoga2_image.png',
    'assets/images/side_image.png'
  ];

  List<List<String>> contentText = [
    ['7 days', 'Morning Yoga', 'Improve Mental Focus', '30 mins'],
    ['3 days', 'Plank Exercise', 'Improve Posture and Stability', '30 mins'],
    ['1 days', 'Random Exercise', 'Randdom', '30 mins'],
  ];

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(0xffF8F9FC)
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ImageIcon(AssetImage('assets/images/heart_icon.png')),
                          Text(
                            'Heart Rate'
                          ),
                        ],
                      ),
                      Text(
                        '81BPM',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 2,
                  color: Color(0xffD9D9D9),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list),
                          Text(
                              'To-do'
                          ),
                        ],
                      ),
                      Text(
                        '32.5 %',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 2,
                  color: Color(0xffD9D9D9),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_fire_department),
                          Text(
                              'Calo'
                          ),
                        ],
                      ),
                      Text(
                        '1000 Cal',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
            'Workout Programs',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    isScrollable: true,
                    indicatorColor: Color(0xff363F72),

                    tabs: tabsList.map((e) => Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        e,
                        style: TextStyle(
                            color: Color(0xff363F72),
                            fontSize: 16
                        ),
                      ),
                    )).toList(),

                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.separated(
                            itemBuilder: (_, index) => allTypesListViewBuilder(index),
                            separatorBuilder: (_, index) => SizedBox(height: 20.0,),
                            itemCount: 3
                        ),
                        ListView.separated(
                            itemBuilder: (_, index) => allTypesListViewBuilder(0),
                            separatorBuilder: (_, index) => SizedBox(height: 20.0,),
                            itemCount: 1
                        ),
                        ListView.separated(
                            itemBuilder: (_, index) => allTypesListViewBuilder(1),
                            separatorBuilder: (_, index) => SizedBox(height: 20.0,),
                            itemCount: 1
                        ),
                        ListView.separated(
                            itemBuilder: (_, index) => allTypesListViewBuilder(2),
                            separatorBuilder: (_, index) => SizedBox(height: 20.0,),
                            itemCount: 1
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget allTypesListViewBuilder(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffF8F9FC),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Colors.white
                    ),
                  ),
                  color: Colors.white,
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(contentText[index][0])
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  contentText[index][1],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  contentText[index][2]
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Icon(Icons.access_time_outlined),
                    SizedBox(width: 5.0,),
                    Text(
                      contentText[index][3]
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(imagePaths[index]),
          ),
        ],
      ),
    );
  }
}
