import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class Rattingstar extends StatelessWidget {
  const Rattingstar({
    super.key, required this.rating, required this.size,
  });
final double rating;
final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        itemCount: 5,
        rating: rating,
        itemSize: size,
        itemBuilder: (_, __) => Icon(
          Iconsax.star5,
          color:Colors.yellow.shade600,
        ));
  }
}