import 'package:flutter/material.dart';
import 'package:observe_statemanagement/EXERCISE-2/provider/count_notifier.dart';
import 'package:observe_statemanagement/EXERCISE-2/screen/home.dart';
import 'package:provider/provider.dart';

class ColorTapsScreen extends StatefulWidget {
  const ColorTapsScreen({super.key});
  @override
  ColorTapsScreenState createState() => ColorTapsScreenState();
}

class ColorTapsScreenState extends State<ColorTapsScreen> {
  @override
  Widget build(BuildContext context) {
    print('Screen Color Tap');
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Column(
        children: [
          ColorTap(
            type: CardType.red,
          ),
          ColorTap(
            type: CardType.blue,
          ),
        ],
      ),
    );
  }
}

class ColorTap extends StatelessWidget {
  final CardType type;

  const ColorTap({
    super.key,
    required this.type,
  });

  Color get backgroundColor => type == CardType.red ? Colors.red : Colors.blue;

  @override
  Widget build(BuildContext context) {
    print('');
    return Consumer<ColorCounter>(
      builder: (context, count, child) {
        final countTap = type == CardType.red ? count.redCount : count.blueCount;
        print('${type == CardType.red ? 'red' : 'blue'} tap with count: $countTap');
        return GestureDetector(
          onTap: () {
            if (type == CardType.red) {
              count.incrementCountRed();
            } else {
              count.incrementCountBlue();
            }
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 100,
            child: Center(
              child: Text(
                'Taps: $countTap',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            )
          ),
        );
      },
    );
  }
}
