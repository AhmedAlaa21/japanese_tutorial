import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/widgets/category_container.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  static const screenRoute = 'colors';

  final List<CategoryDetails> colorsList = const [
    CategoryDetails(
      imagePath: 'assets/images/colors/color_black.png',
      english: 'Black',
      japanese: 'Burakku',
      fileName: 'black.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_brown.png',
      english: 'brown',
      japanese: 'Chairo',
      fileName: 'brown.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      english: 'dusty yellow',
      japanese: 'Hokori ppoi kiiro',
      fileName: 'dusty yellow.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_gray.png',
      english: 'gray',
      japanese: 'Gurē',
      fileName: 'gray.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_green.png',
      english: 'green',
      japanese: 'Midori',
      fileName: 'green.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_red.png',
      english: 'red',
      japanese: 'Aka',
      fileName: 'red.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_white.png',
      english: 'white',
      japanese: 'Shiroi',
      fileName: 'white.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/yellow.png',
      english: 'yellow',
      japanese: 'Kiiro',
      fileName: 'yellow.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_black.png',
      english: 'Black',
      japanese: 'Burakku',
      fileName: 'black.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_brown.png',
      english: 'brown',
      japanese: 'Chairo',
      fileName: 'brown.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      english: 'dusty yellow',
      japanese: 'Hokori ppoi kiiro',
      fileName: 'dusty yellow.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_gray.png',
      english: 'gray',
      japanese: 'Gurē',
      fileName: 'gray.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (ctx, index) => CategoryContainer(
          categoryDetails: colorsList[index],
          color: Colors.deepPurpleAccent,
          categoryName: 'colors',
        ),
      ),
    );
  }
}
