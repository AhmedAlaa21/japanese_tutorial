import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/widgets/category_container.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  static const screenRoute = 'phrases';

  final List<CategoryDetails> phrasesList = const [
    CategoryDetails(
      english: 'are you coming',
      japanese: 'Kimasu ka',
      fileName: 'are_you_coming.wav',
    ),
    CategoryDetails(
      english: 'don`t forget to subscribe',
      japanese: 'Kōdoku suru koto o wasurenaide kudasai',
      fileName: 'dont_forget_to_subscribe.wav',
    ),
    CategoryDetails(
      english: 'how are you feeling',
      japanese: 'Go kibun wa ikagadesu ka',
      fileName: 'how_are_you_feeling.wav',
    ),
    CategoryDetails(
      english: 'i love anime',
      japanese: 'Watashi wa anime ga daisukidesu',
      fileName: 'i_love_anime.wav',
    ),
    CategoryDetails(
      english: 'i love programming',
      japanese: 'Watashi wa puroguramingu ga daisukidesu',
      fileName: 'i_love_programming.wav',
    ),
    CategoryDetails(
      english: 'programming is easy',
      japanese: 'Puroguramingu wa kantandesu',
      fileName: 'programming_is_easy.wav',
    ),
    CategoryDetails(
      english: 'what is your name',
      japanese: 'Namae wa nandesu ka',
      fileName: 'what_is_your_name.wav',
    ),
    CategoryDetails(
      english: 'where are you going',
      japanese: 'Nanishiteruno',
      fileName: 'where_are_you_going.wav',
    ),
    CategoryDetails(
      english: 'yes I am coming',
      japanese: 'Hai watashi wa kite imasu',
      fileName: 'yes_im_coming.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_dusty_yellow.png',
      english: 'how are you feeling',
      japanese: 'Go kibun wa ikagadesu ka',
      fileName: 'how_are_you_feeling.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/colors/color_gray.png',
      english: 'i love anime',
      japanese: 'Watashi wa anime ga daisukidesu',
      fileName: 'i_love_anime.wav',
    ),
    CategoryDetails(
      english: 'i love programming',
      japanese: 'Watashi wa puroguramingu ga daisukidesu',
      fileName: 'i_love_programming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (ctx, index) => PhraseContainer(
          categoryDetails: phrasesList[index],
        ),
      ),
    );
  }
}
