import 'package:flutter/material.dart';
import 'package:observe_statemanagement/EXERCISE-2/provider/count_notifier.dart';
import 'package:provider/provider.dart';
import 'screen/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounter(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Home()),
      ),
    ),
  );
}
