import 'package:ecommerce/features/shop/Review/widgets/reviewrange.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Allrange extends StatelessWidget {
  const Allrange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        reviewrange(title: 'Excellent', number: '5', colors: Colors.green, fillrange: 1,),
        reviewrange(title: 'Good', number: '4', colors: Colors.green.shade100, fillrange: 0.8)
        ,     reviewrange(title: 'Fair', number: '3',colors: Colors.yellow, fillrange: 0.6),
        reviewrange(title: 'Average', number: '2', colors: Colors.orange, fillrange: 0.4),
        reviewrange(title: 'Poor          ', number: '1', colors: Colors.red, fillrange: 0.2),
        Divider(
          thickness: 2,
        ),
      ],
    );
  }
}