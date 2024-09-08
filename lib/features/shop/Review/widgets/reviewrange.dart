import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/device/device_utility.dart';
import '../../../../util/helpers/helper_function.dart';

class reviewrange extends StatelessWidget {
  const reviewrange({
    super.key, required this.title, required this.number, required this.colors, required this.fillrange,
  });
  final String title ,number;
  final double fillrange;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex:1,child: Text(title,style:Theme.of(context).textTheme.labelMedium)),
        const SizedBox(width: TSizes.defaultSpace,),
        Text(number,style:Theme.of(context).textTheme.bodyMedium!.apply(color: dark?TColors.white:TColors.black )),
        SizedBox(width: TDeviceUnits.getScreenWidth(context)*0.6,
          child: LinearProgressIndicator(
            value: fillrange,
            minHeight: 11,

            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(colors,),
            borderRadius: BorderRadius.circular(7),

          ),
        )
      ],
    );
  }
}