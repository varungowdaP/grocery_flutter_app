import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';

class Orderlistsscreens extends StatelessWidget {
  const Orderlistsscreens({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
      itemCount: 6,
      shrinkWrap: true,
      separatorBuilder: (_,  index) => SizedBox(height: TSizes.spaceBtwItems,),
      itemBuilder: (_,index)=>
      TRoundcontainer(
        padding: EdgeInsets.all(TSizes.sm),
        showborder: true,
        backgroundcolor: dark ? TColors.dark : TColors.llight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Image(
                  image: AssetImage(TImages.handorder),
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Processing',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: Colors.green, fontWeightDelta: 1)),
                SizedBox(width: 82,),
                Text('22-06-2024', style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [
                Text('Tracking number',style: Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline),),
                          Text('Total price',style: Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline),),


              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,


              children: [
                Text('#12453',style: Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline),),
                Text('\$4566',style: Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.underline),),


              ],
            ),
            Row(
              children: [
                SizedBox(height: 60,width: 120,
                  child: ElevatedButton(onPressed: (){}, child:  Text('Details',),style:ElevatedButton.styleFrom(backgroundColor: Colors.green,overlayColor:Colors.yellow,

                  )),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
