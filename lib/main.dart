import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:fitness_app/widgets/home.dart';
import 'package:fitness_app/widgets/food.dart';
//import 'package:coach/ui/profile_scr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch:Colors.purple,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}