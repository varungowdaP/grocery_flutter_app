import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../features/shop/productshadow/roundcontainer.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
class Coupons extends StatelessWidget {
  const Coupons({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark= THelperFunctions.isDarkMode(context);
    return TRoundcontainer(

      showborder: true,
      backgroundcolor: dark?TColors.dark:TColors.white,
      padding: const EdgeInsets.only(top: TSizes.sm,bottom: TSizes.sm,right: TSizes.sm,left: TSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'My Discount Coupon',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,

              ),
            ),
          ),
          TextButton(onPressed: (){}, child: Text('Apply',style: TextStyle(color: Colors.green,decoration: TextDecoration.underline),))
        ],
      ),
    );
  }
}