import 'package:flutter/material.dart';
class rcard extends StatelessWidget {
  const rcard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
  child: Image(image: AssetImage(image),),
    );
  }
}
