
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../iconbuttondirect/lovebuttons.dart';

class plusminuscart extends StatelessWidget {
  const plusminuscart({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TLovebutton(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: dark ? TColors.white:TColors.white,
          background: dark? Colors.greenAccent.shade400:TColors.accent,
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBtwItems,),
        TLovebutton(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: dark ? TColors.white:TColors.white,
          background: dark? TColors.darkerGrey:Colors.purple.shade900,
        ),
      ],
    );
  }
}