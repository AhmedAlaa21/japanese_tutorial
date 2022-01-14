import 'package:flutter/material.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/home_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nanii',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.screenRoute,
      routes: {
        HomeScreen.screenRoute: (ctx) => const HomeScreen(),
        NumbersScreen.screenRoute: (ctx) => const NumbersScreen(),
        FamilyScreen.screenRoute: (ctx) => const FamilyScreen(),
        ColorsScreen.screenRoute: (ctx) => const ColorsScreen(),
        PhrasesScreen.screenRoute: (ctx) => const PhrasesScreen(),
      },
    );
  }
}
