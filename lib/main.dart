import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_todo/screens/tasks.dart';
import 'screens/teams.dart';
import 'screens/calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    CalendarPage(),
    Homepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              unselectedItemColor: Color(0XFF263064),
              selectedIconTheme: IconThemeData(color: Color(0XFF263064)),
              // currentIndex: _selectedItemIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  _selectedItemIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  title: Text(""),
                  icon: Icon(Icons.emoji_people),
                ),
                BottomNavigationBarItem(
                  title: Text(""),
                  icon: Icon(Icons.calendar_today_outlined),
                ),
                BottomNavigationBarItem(
                  title: Text(""),
                  icon: Icon(Icons.done),
                ),
              ],
            ),
            body: pages[_selectedItemIndex]));
  }
}
