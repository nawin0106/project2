import 'package:flutter/material.dart';
import 'package:flutter_application_1/page.dart';

class Defaults {
  static final Color drawerItemColor = Colors.blueGrey;
  static final Color drawerItemSelectedColor = Colors.blue;

  static final drawerItemText = [
    'Inbox',
    'Sent',
    'Draft',
    'Starred',
    'Trash',
    'Spam',
  ];

  static final drawerIconItem = [
    Icons.inbox,
    Icons.send,
    Icons.mail,
    Icons.star,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
//page change
/*
class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int index = 0;
  PageController _pageController = PageController();
  List<Widget> _screen = [
    Mail(),
    Chat(),
    Spaces(),
    Meet(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.email_outlined), label: 'Mail'),
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
            NavigationDestination(
                icon: Icon(Icons.group_outlined), label: 'Spaces'),
            NavigationDestination(
                icon: Icon(
                  Icons.videocam_outlined,
                  size: 30,
                ),
                label: 'Meet'),
          ],
        ),
      ),
    );
  }
}*/
