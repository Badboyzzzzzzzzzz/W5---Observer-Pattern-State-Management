import 'package:flutter/material.dart';
import 'package:observe_statemanagement/EXERCISE-2/provider/count_notifier.dart';
import 'package:provider/provider.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('Statistic screen built');
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Consumer<ColorCounter>(
        builder: (context, count, child) {
          print('statistics with red: ${count.redCount}, blue: ${count.blueCount}');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Red Taps: ${count.redCount}',
                    style: TextStyle(fontSize: 24)),
                Text('Blue Taps: ${count.blueCount}',
                    style: TextStyle(fontSize: 24)),
              ],
            ),
          );
        },
      ),
    );
  }
}
