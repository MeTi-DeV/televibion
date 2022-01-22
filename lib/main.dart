import 'package:flutter/material.dart';
import 'package:televibion_app/pages/Profile.dart';
import 'package:televibion_app/pages/archives.dart';
import 'package:televibion_app/pages/home.dart';
import 'package:televibion_app/pages/live.dart';
import 'package:televibion_app/pages/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 4;
  final screens = [
    ProfilePage(),
    ArchivesPage(),
    SearchPage(),
    LivePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: screens[index],
          bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                indicatorColor: Color.fromRGBO(0, 0, 0, 0),
                labelTextStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        top:
                            BorderSide(width: 1, color: Colors.grey.shade300))),
                child: NavigationBar(
                    labelBehavior:
                        NavigationDestinationLabelBehavior.onlyShowSelected,
                    animationDuration: Duration(seconds: 1),
                    selectedIndex: index,
                    onDestinationSelected: (index) => setState(() {
                          this.index = index;
                        }),
                    height: 60,
                    backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                    destinations: const [
                      NavigationDestination(
                          selectedIcon: Icon(Icons.person_rounded),
                          icon: Icon(Icons.person_outline_rounded),
                          label: 'پروفایل'),
                      NavigationDestination(
                          selectedIcon: Icon(Icons.archive_rounded),
                          icon: Icon(Icons.archive_outlined),
                          label: 'آرشیو'),
                      NavigationDestination(
                          selectedIcon: Icon(Icons.search_rounded),
                          icon: Icon(Icons.search),
                          label: 'جستجو'),
                      NavigationDestination(
                          selectedIcon: Icon(Icons.live_tv_rounded),
                          icon: Icon(Icons.live_tv_rounded),
                          label: 'پخش زنده'),
                      NavigationDestination(
                          selectedIcon: Icon(Icons.home),
                          icon: Icon(Icons.home_outlined),
                          label: 'خانه'),
                    ]),
              )),
        ));
  }
}
