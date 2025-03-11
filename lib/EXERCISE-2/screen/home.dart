import 'package:flutter/material.dart';
import 'package:observe_statemanagement/EXERCISE-2/provider/count_notifier.dart';
import 'package:observe_statemanagement/EXERCISE-2/screen/color_tap.dart';
import 'package:observe_statemanagement/EXERCISE-2/screen/statistice.dart';
import 'package:provider/provider.dart';

enum CardType { red, blue }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('Home rebuilt');
    return Consumer<ColorCounter>(builder: (context, value, child) {
      return Scaffold(
        body: _currentIndex == 0 ? ColorTapsScreen() : StatisticsScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.tap_and_play),
              label: 'Taps',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Statistics',
            ),
          ],
        ),
      );
    });
  }
}

