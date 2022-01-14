import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer(
      {Key? key, required this.text, required this.color, this.onTap})
      : super(key: key);

  final String text;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        color: color,
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
