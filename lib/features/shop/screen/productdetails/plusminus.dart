import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/iconbuttondirect/lovebuttons.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_function.dart';

class plusminus extends StatelessWidget {
  const plusminus({
    super.key, required this.height, required this.width,
  });
  final double height,width;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Row(
          children: [
            TLovebutton(icon:Iconsax.minus,background: TColors.grey,width: width,height: height,color: TColors.white,),
            const SizedBox(width: 28,),
            Text('5',style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(width: 28,),
            TLovebutton(icon:Iconsax.add,background: Colors.green,width: width,height: height,color: TColors.white,),



          ],
        )
      ],
    );
  }
}