import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class amountscash extends StatelessWidget {
  const amountscash({
    super.key,
     this.currency= '\₹',
    required this.price,
     this.maxlines=1,
     this.islarge=false,
     this.linethrough=false,
  });

  final String currency, price;
  final int maxlines;
  final bool islarge;
  final bool linethrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currency + price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: islarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: linethrough ? TextDecoration.lineThrough : null),
    );
  }
}
