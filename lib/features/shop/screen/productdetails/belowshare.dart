import 'dart:ui';

import 'package:ecommerce/features/shop/screen/home/widgets/homeslider.dart';
import 'package:ecommerce/features/shop/screen/productdetails/cardsliderdata.dart';
import 'package:ecommerce/features/shop/screen/productdetails/plusminus.dart';
import 'package:ecommerce/features/shop/screen/store/widgets/icontext.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/productstext/cashtext.dart';
import '../../../../util/constants/sizes.dart';
class rupeesandtext extends StatelessWidget {
  const rupeesandtext({super.key, required this.information});
  final String information;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
             Text('\₹100',style: Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough),
              ),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Transform.scale(scale: 2,child: const amountscash(price: '45')),
            const SizedBox(
              height: 12,width: 25,
            ),
            plusminus(height: 40, width: 40),





          ],

        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            const Text(
              'Items Details:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
            ),
          ],
        ),

             Text(information,style:Theme.of(context).textTheme.labelMedium,maxLines:4,overflow: TextOverflow.ellipsis,),
       TCardSliderdata (),

        //




      ],


    );

  }
}
