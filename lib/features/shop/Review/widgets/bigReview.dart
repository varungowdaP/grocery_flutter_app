import 'package:ecommerce/features/shop/Review/widgets/ratingstar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class big_review extends StatelessWidget {
  const big_review({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: Theme.of(context).textTheme.displayLarge),
        const Rattingstar(rating: 4.2, size: 45,),



      ],
    );

  }
}

