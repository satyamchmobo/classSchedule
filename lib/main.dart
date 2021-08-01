import 'package:flutter/material.dart';
import 'package:schedule_task/view/constants/colors.dart';
import 'package:schedule_task/view/customWidgets/custBottomBar.dart';
import 'package:schedule_task/view/widgets/classCard.dart';
import 'package:schedule_task/view/widgets/curClasTopCard.dart';
import 'package:timelines/timelines.dart';
import 'package:schedule_task/view/widgets/customAppBar.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _index = 0;

  List<Widget> liOfCards = [
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: classCard(
          classname: 'Physics',
          cardBgColor: physicsBgColor,
          classNameColor: physicsClassNameColor,
          classtype: 'Class'),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: classCard(
          classname: 'Geography',
          cardBgColor: geoBgColor,
          classNameColor: geoClassNameColor,
          classtype: 'Lec',
          isSelected: true),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: classCard(
        classname: 'Chemistry',
        cardBgColor: chemBgColor,
        classNameColor: chemClassNameColor,
        classtype: 'Pract.',
      ),
      
    ),
      Padding(
      padding: const EdgeInsets.only(left: 15),
      child: classCard(
        classname: 'Maths',
        cardBgColor: mathsBgColor,
        classNameColor: mathsClassNameColor,
        classtype: 'Class',
      ),
      
    ),
  ];

  List<Widget> timeList = [
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        '12 am',
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        '14 pm',
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        '16 pm',
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey),
      ),
    ),
      Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Text(
        '18 pm',
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 13, color: Colors.grey),
      ),
    ),
  ];
  // final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,
      body: SafeArea(
        child: ListView(
          // mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customAppBar(),
            curClasTopCard(),
            Container(
                //height: 300,
                // width: double.infinity,
                child: FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0.15,
                connectorTheme: ConnectorThemeData(
                  thickness: 1.0,
                  color: Color(0xffd3d3d3),
                ),
                indicatorTheme: IndicatorThemeData(
                  color: appPrimaryColor,
                  size: 8.0,
                ),
              ),
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.basic,
                oppositeContentsBuilder: (context, index) {
                  return timeList[index];
                },
                contentsBuilder: (context, index) {
                  return liOfCards[index];
                },
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => index == 1
                    ? IndicatorStyle.dot
                    : IndicatorStyle.transparent,
                itemCount: liOfCards.length,
              ),
            )),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: FloatingNavbar(
          backgroundColor: appPrimaryColor,
          fontSize: 0,
          width: Get.width - 50,
          // padding: EdgeInsets.symmetric(vertical: 0),
          // margin: EdgeInsets.symmetric(vertical: 0),
          // elevation: 0.01,

          selectedBackgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          borderRadius: 22,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: Icons.person, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
          ],
        ),
      ),
    );
  }
}

