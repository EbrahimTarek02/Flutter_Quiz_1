import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/app_provider.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Text(
                  'Hello, ',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff371B34)
                  ),
                ),
                Text(
                  'Sara Rose',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff371B34),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              'How are you feeling today ?',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff371B34)
              ),
            ),
            Row(
              children: [
                Expanded(child: Image.asset('assets/images/love_icon.png'),),
                Expanded(child: Image.asset('assets/images/love_icon.png'),),
                Expanded(child: Image.asset('assets/images/love_icon.png'),),
                Expanded(child: Image.asset('assets/images/love_icon.png'),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Text('Love', textAlign: TextAlign.center,),),
                Expanded(child: Text('Love', textAlign: TextAlign.center,),),
                Expanded(child: Text('Love', textAlign: TextAlign.center,),),
                Expanded(child: Text('Love', textAlign: TextAlign.center,),),
              ],
            ),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feature',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See more >',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff027A48)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            CarouselSlider(
              items: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffECFDF3)
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Positive Vibes',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff344054)
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'Boost your mood with positive vibes',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.lightGreen,
                                ),
                                SizedBox(width: 10.0,),
                                Text(
                                  '10 mins',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('assets/images/side_image.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffECFDF3)
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Positive Vibes',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff344054)
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'Boost your mood with positive vibes',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.lightGreen,
                                ),
                                SizedBox(width: 10.0,),
                                Text(
                                  '20 mins',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('assets/images/side_image.png'),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xffECFDF3)
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Positive Vibes',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff344054)
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'Boost your mood with positive vibes',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.lightGreen,
                                ),
                                SizedBox(width: 10.0,),
                                Text(
                                  '30 mins',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset('assets/images/side_image.png'),
                      ),
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                onPageChanged: (newIndex, _) => provider.onChangeSlider(newIndex),
                // enlargeCenterPage: true
              ),
            ),
            SizedBox(height: 10.0,),
            Align(
              alignment: AlignmentDirectional.center,
              child: SizedBox(
                height: 20,
                child: ListView.separated(
                  itemBuilder: (_, index) => Icon(
                    Icons.circle,
                    color: index == provider.sliderIndex ? Color(0xff98A2B3) : Color(0xffD9D9D9),
                    size: 8,
                  ),
                  separatorBuilder: (_, index) => SizedBox(width: 8,),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feature',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See more >',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff027A48)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffECFDF3)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/relaxation_icon.png')),
                        SizedBox(width: 10.0,),
                        Text(
                          'Relaxation',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffECFDF3)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/meditation_icon.png')),
                        SizedBox(width: 10.0,),
                        Text(
                          'Meditation',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffECFDF3)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/breathing_icon.png')),
                        SizedBox(width: 10.0,),
                        Text(
                          'Breathing',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffECFDF3)
                    ),
                    child: Row(
                      children: [
                        ImageIcon(AssetImage('assets/images/yoga_icon.png')),
                        SizedBox(width: 10.0,),
                        Text(
                          'Yoga',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
