import 'package:btm_navigation_with_fab/pages/dashboard/dashboard.dart';
import 'package:btm_navigation_with_fab/pages/profile.dart';
import 'package:btm_navigation_with_fab/pages/setting.dart';
import 'package:btm_navigation_with_fab/presentation/font_awesome5_icons.dart';
import 'package:btm_navigation_with_fab/presentation/font_awesome_icons.dart';
import 'package:btm_navigation_with_fab/presentation/linear_icons_icons.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chat.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [Dashboard(), Chat(), Setting(), Profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  /// function to change btm navigation icon and text color
  MaterialColor changeTab(int index) =>
      currentTab == index ? Colors.deepPurple : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepPurple,
            child: const Icon(
              FontAwesome4.qrcode,
              size: 30,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          LinearIcons.home,
                          color: changeTab(0),
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: changeTab(0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          LinearIcons.select,
                          color: changeTab(1),
                        ),
                        Text(
                          'Code',
                          style: TextStyle(
                            color: changeTab(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          LinearIcons.checkmark_cicle,
                          color: changeTab(2),
                        ),
                        Text(
                          'Presensi',
                          style: TextStyle(
                            color: changeTab(2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          LinearIcons.user,
                          color: changeTab(3),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: changeTab(3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
