import 'package:flutter/material.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';
import 'package:toku/widgets/section_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const screenRoute = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4DA),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionContainer(
            text: 'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.pushNamed(
                context,
                NumbersScreen.screenRoute,
              );
            },
          ),
          SectionContainer(
            text: 'Family Members',
            color: Colors.green,
            onTap: () {
              Navigator.pushNamed(
                context,
                FamilyScreen.screenRoute,
              );
            },
          ),
          SectionContainer(
            text: 'Colors',
            color: Colors.deepPurpleAccent,
            onTap: () {
              Navigator.pushNamed(context, ColorsScreen.screenRoute,);
            },
          ),
          SectionContainer(
            text: 'Phrases',
            color: Colors.blue,
            onTap: () {
              Navigator.pushNamed(context, PhrasesScreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }
}
