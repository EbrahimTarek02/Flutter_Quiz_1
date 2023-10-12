import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/app_provider.dart';

class InsightsScreen extends StatelessWidget {

  List<String> listViewText = [
    'Discover',
    'News',
    'Most Viewed',
    'Saved'
  ];

  List<bool> selectedTabs = [true, false, false, false];

  List<List> listContent = [
    ['assets/images/item1.png', 'Self-Care', '10 Easy Self-Care Ideas That Can Help Boost Your Health', Color(0xffFEF0C7)],
    ['assets/images/item2.png', 'Cycle', 'How to take care of Menstrual Hygiene during Menstrual Cycle', Color(0xffFEE4E2)],
  ];

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2
                  ),
                ),

                prefixIcon: Icon(Icons.search),

                hintText: 'Articles, Videos, Audios and more...',
              ),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: MediaQuery.of(context).size.height * .055,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => chipListBuilder(index, provider),
                  separatorBuilder: (_, index) => SizedBox(width: 18.0,),
                  itemCount: 4
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Text(
                  'Hot Topics',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5925DC)
                  ),
                ),
                Icon(Icons.navigate_next, color: Color(0xff5925DC),),
              ],
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => adsListBuilder(index, context),
                  separatorBuilder: (_, index) => SizedBox(width: 20.0,),
                  itemCount: listContent.length
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Get Tips',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(
                  top: 10.0,
                  right: 20.0
              ),

              decoration: BoxDecoration(
                color: Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(14.0),
              ),

              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/doctor_image.png',
                      height: MediaQuery.of(context).size.height * .2,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Connect with doctors & get suggestions',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 6.0,),
                        Text(
                          'Connect now and get expert insights',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text(
                              'View Details'
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Text(
                  'Cycle Phases and Period',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5925DC)
                  ),
                ),
                Icon(Icons.navigate_next, color: Color(0xff5925DC),),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget chipListBuilder(int index, AppProvider provider) {
    return ActionChip(
      label: Text(
        listViewText[index],
        style: TextStyle(
          fontSize: 16,
          color: selectedTabs[index] ? Color(0xff6941C6) : Color(0xff667085),
        ),
      ),
      onPressed: () => provider.onTabClicked(selectedTabs, index),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
      backgroundColor: selectedTabs[index] ? Color(0xffF4EBFF) : Colors.white,
      // side: BorderSide(
      //   color: Colors.grey
      // ),
      elevation: 3,
    );
  }

  Widget adsListBuilder(int index, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Image.asset(listContent[index][0]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: listContent[index][3],
                      borderRadius: BorderRadius.circular(8.0)
                  ),

                  padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),

                  child: Text(
                    listContent[index][1],
                    style: TextStyle(
                        color: Color(0xff93370D)
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  listContent[index][2],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
