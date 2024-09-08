import 'package:ecommerce/util/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/sizes.dart';

class TBrandText extends StatelessWidget {
  const TBrandText(
      {super.key, this.color, required this.maxlines, required this.title, this.textAlign, required this.brandtexts,
      });

  final Color? color;
  final int maxlines;
  final String title;
  final TextAlign? textAlign;
  final TextSizes brandtexts;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: brandtexts ==TextSizes.small ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandtexts ==TextSizes.medium ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          :brandtexts ==TextSizes.large ? Theme.of(context).textTheme.bodyMedium!.apply(color: color):
          Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
