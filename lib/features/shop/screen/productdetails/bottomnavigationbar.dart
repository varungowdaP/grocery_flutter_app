import 'package:ecommerce/common/widgets/iconbuttondirect/lovebuttons.dart';
import 'package:ecommerce/features/shop/screen/productdetails/plusminus.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_function.dart';

class TBottomProduct extends StatelessWidget {
  const TBottomProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
        decoration: BoxDecoration(
            color: dark ? TColors.darkerGrey : TColors.grey,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            )),
        child: Row(
          children: [
            const Image(image: AssetImage(TImages.packagehand,),width: 60,height: 60,),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal:85,vertical: 20),
                    backgroundColor: Colors.green.shade700,
                    side: const BorderSide(color: TColors.black),),
                child: Text(
                  'Add to cart',
                )),
          ],
        ));
  }
}
