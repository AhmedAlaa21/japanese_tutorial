import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/widgets/category_container.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  static const screenRoute = 'numbers';

  final List<CategoryDetails> numbersList = const [
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_one.png',
      english: 'one',
      japanese: 'ichi',
      fileName: 'number_one_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_two.png',
      english: 'two',
      japanese: 'ni',
      fileName: 'number_two_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_three.png',
      english: 'three',
      japanese: 'san',
      fileName: 'number_three_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_four.png',
      english: 'four',
      japanese: 'Sni',
      fileName: 'number_four_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_five.png',
      english: 'five',
      japanese: 'Go',
      fileName: 'number_five_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_six.png',
      english: 'six',
      japanese: 'Roku',
      fileName: 'number_six_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_seven.png',
      english: 'seven',
      japanese: 'Sebun',
      fileName: 'number_seven_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_eight.png',
      english: 'eight',
      japanese: 'hachi',
      fileName: 'number_eight_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_nine.png',
      english: 'nine',
      japanese: 'Kyu',
      fileName: 'number_nine_sound.mp3',
    ),
    CategoryDetails(
      imagePath: 'assets/images/numbers/number_ten.png',
      english: 'ten',
      japanese: 'Ju',
      fileName: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (ctx, index) => CategoryContainer(
          categoryDetails: numbersList[index],
          color: Colors.orange,
          categoryName: 'numbers',
        ),
      ),
    );
  }
}
