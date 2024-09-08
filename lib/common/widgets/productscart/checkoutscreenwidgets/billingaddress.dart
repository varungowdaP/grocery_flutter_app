import 'package:ecommerce/common/textcontainer/sectionheading.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_string.dart';
class Billingaddress extends StatelessWidget {

  const Billingaddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        sectionheading(title: 'Payment Mode',buttontitle:'change',textcolor:TColors.chi ,onPressed: () {},),
        SizedBox(height:
          TSizes.spaceBtwItems/2,),
        Row(

          children: [
            TRoundcontainer(
              width: 60,
              height: 35,
              backgroundcolor: dark ? TColors.dark:TColors.white,
              child: Image(image: AssetImage(TImages.visa),fit: BoxFit.contain,),
            ),
            SizedBox(height: TSizes.spaceBtwItems/2,),
         Text('VISA',style: Theme.of(context).textTheme.bodyMedium,)

          ],
        )
      ],
    );
  }
}
