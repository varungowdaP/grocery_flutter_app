import 'package:ecommerce/common/widgets/productscart/checkout/cartcheckout.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_string.dart';
class cartbottom extends StatelessWidget {
  const cartbottom({super.key, required this.onpressed});
  final  VoidCallback  onpressed;

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Container(padding: EdgeInsets.symmetric(horizontal: 18,vertical:11),
      decoration: BoxDecoration(
        color: dark?TColors.textprimary:TColors.lightContainer,
        borderRadius:
    const BorderRadius.only(
    topRight: Radius.circular(16),
    topLeft: Radius.circular(16),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\₹250',style:Theme.of(context).textTheme.titleMedium !.apply(color: dark? TColors.white:TColors.black),),
          ElevatedButton(
              onPressed: onpressed ,
              style: ElevatedButton.styleFrom(

                padding: const EdgeInsets.symmetric(horizontal:40,vertical: 20),
                backgroundColor: dark?Colors.greenAccent.shade700 :Colors.purple.shade700,
                side: const BorderSide(color: TColors.black),),
              child: Row(
                children: [
                  Image(image: AssetImage(TImages.carticonscheckout),width: 30,height: 30,),
                  Text('Checkout',style:TextStyle(color: dark? TColors.white:TColors.white),),
                ],
              )),
        ],
      ),


    );
  }
}
