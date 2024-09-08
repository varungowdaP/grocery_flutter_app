import 'package:ecommerce/common/widgets/images/roundedimagesslide.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/features/shop/screen/productdetails/product_details.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/iconbuttondirect/lovebuttons.dart';
import '../../../../../common/widgets/productstext/cashtext.dart';
import '../../../../../common/widgets/productstext/productstext.dart';
import '../../../../../util/constants/image_string.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../productshadow/productshadowcustom.dart';
import '../../store/widgets/icontext.dart';

class TProductcardvertical extends StatelessWidget {
  const TProductcardvertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(onTap: ()=>Get.to(()=>  ProductDetails()),
      child: Container(
        width: 175,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.vshadow],
          borderRadius: BorderRadius.circular(16),
          color: dark ? TColors.dark : TColors.white,
        ),
        child: Column(
          children: [
            TRoundcontainer(
              height: 170,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundcolor: dark ? TColors.dark : TColors.llight,
              child: Stack(
                children: [
                  ///imagessss
                  const TRoundedimages(
                    image1: TImages.watwrmelon,fit: BoxFit.cover,
                    applyimagesradius: true,
                  ),
                  //todo sales tag madu
                  Positioned(
                    top: 1,
                    left: 0,
                    child: TRoundcontainer(
                      radius: 12,
                      backgroundcolor: TColors.pprimary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.4, vertical: 0.4),
                      child: Text(
                        '30%off',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.white),
                      ),
                    ),
                  ),
                  //todo heart
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TLovebutton(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),

            ///data
            const TPoductsnames(title: 'watermelon',smallsize: true,),

            const Ttexticoncard(title: 'vegetables', maxlines: 1, iconcolor: TColors.chi,textcolor:TColors.chi, brandtextsizes: TextSizes.large,textAlign:TextAlign.start,),
            //todo spacer aku maribeada
            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //amount
               const Padding(
                 padding: EdgeInsets.only(left: 11),
                 child: amountscash(price: '95',),
               )

              ,Container(
                decoration:const BoxDecoration(
                  color: TColors.dark,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(16)
                  ),

                ) ,
                  child:const SizedBox(
                      width: 35,
                      height: 35,
                      child: Center(child: Icon(Iconsax.add_square,color: TColors.white,)))
              )
              ],
            )

          ],
        ),
      ),
    );
  }
}






