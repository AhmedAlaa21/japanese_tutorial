import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {required this.categoryDetails,
      required this.color,
      required this.categoryName,
      Key? key})
      : super(key: key);
  final CategoryDetails categoryDetails;
  final Color color;
  final String categoryName;
  final textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 80,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF4DA),
            child: Image.asset(
              categoryDetails.imagePath!,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(categoryDetails.japanese!, style: textStyle),
                      Text(categoryDetails.english!, style: textStyle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      final AudioCache player =
                          AudioCache(prefix: 'assets/sounds/$categoryName/');
                      player.play(categoryDetails.fileName!);
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseContainer extends StatelessWidget {
  const PhraseContainer({required this.categoryDetails, Key? key}) : super(key: key);
  final CategoryDetails categoryDetails;
  final textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(categoryDetails.japanese!, style: textStyle),
                      Text(categoryDetails.english!, style: textStyle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(
                    onPressed: () {
                      final AudioCache player =
                          AudioCache(prefix: 'assets/sounds/phrases/');
                      player.play(categoryDetails.fileName!);
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
