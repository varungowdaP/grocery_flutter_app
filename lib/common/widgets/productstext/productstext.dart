import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/sizes.dart';

class TPoductsnames extends StatelessWidget {
  const TPoductsnames({
    super.key, required this.title,  this.smallsize=false,  this.maxlines=1, this.align=TextAlign.left,
  });
final String title;
final bool smallsize;
final int maxlines;
final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: smallsize ? Theme.of(context).textTheme.headlineMedium:Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: maxlines,
            textAlign: align,
          )
        ],
      ),
    );
  }
}