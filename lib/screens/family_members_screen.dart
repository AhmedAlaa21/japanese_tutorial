import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/widgets/category_container.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key}) : super(key: key);
  static const screenRoute = 'family';

  final List<CategoryDetails> familyList = const [
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_father.png',
      english: 'father',
      japanese: 'Chichoya',
      fileName: 'father.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_daughter.png',
      english: 'daughter',
      japanese: 'Musume',
      fileName: 'daughter.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_grandfather.png',
      english: 'Grand Father',
      japanese: 'Ojisan',
      fileName: 'grand father.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_mother.png',
      english: 'mother',
      japanese: 'Hahaoya',
      fileName: 'mother.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_grandmother.png',
      english: 'grand mother',
      japanese: 'Sobo',
      fileName: 'grand mother.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_older_brother.png',
      english: 'older brother',
      japanese: 'Nisan',
      fileName: 'older brother.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_older_sister.png',
      english: 'older sister',
      japanese: 'Ane',
      fileName: 'older sister.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_son.png',
      english: 'son',
      japanese: 'Musuko',
      fileName: 'son.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_younger_sister.png',
      english: 'younger sister',
      japanese: 'Imōto',
      fileName: 'younger sister.wav',
    ),
    CategoryDetails(
      imagePath: 'assets/images/family_members/family_younger_brother.png',
      english: 'younger brother',
      japanese: 'Otōto',
      fileName: 'younger brother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (ctx, index) => CategoryContainer(
          categoryDetails: familyList[index],
          color: Colors.green,
          categoryName: 'family_members',
        ),
      ),
    );
  }
}
