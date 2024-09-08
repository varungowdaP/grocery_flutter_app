import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_string.dart';
import '../../../../../util/constants/sizes.dart';

class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.center,


      children: [


        const SizedBox(width:12),
        Container(
            decoration: BoxDecoration( border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook),
              ),
            )
        ),
        const SizedBox(width: 2),
        Container(
            decoration: BoxDecoration( border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(60)),
            child: IconButton(
              onPressed: (){},
              icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.instagram),
              ),
            )
        ),
        const SizedBox(width: 2),
        Container(
            decoration: BoxDecoration( border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)),

            child: IconButton(

              onPressed: (){},
              icon: const Image(
                width:TSizes.iconMd ,
                height:TSizes.iconMd,
                image: AssetImage(TImages.monkey),
              ),
            )
        ),
      ],
    );
  }
}