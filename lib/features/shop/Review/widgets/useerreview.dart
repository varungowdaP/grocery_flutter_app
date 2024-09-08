import 'package:ecommerce/features/shop/Review/widgets/ratingstar.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';

class UserRevieCard extends StatelessWidget {
  const UserRevieCard({super.key});

  @override
  Widget build(BuildContext context)

  {
    final dark=THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.tiger),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Tiger Shrof',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded))
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Rattingstar(
              rating: 5,
              size: 18,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '01-02-2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ReadMoreText(
          'Yo, this grocery spot is lit! Fresh produce, top-notch service—totally nailed it!  EK Dum Jakas',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: const TextStyle(
            fontSize: 14,fontWeight: FontWeight.w600,color: Colors.green
          ),
          lessStyle: const TextStyle(
              fontSize: 14,fontWeight: FontWeight.w600,color:Colors.green
          ),
        ),
        const SizedBox(height: 10,),
        //todo replay review
        TRoundcontainer(backgroundcolor: dark? TColors.darkerGrey:TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grocery Express',style: Theme.of(context).textTheme.bodyMedium,),
                    Text('01-02-2024',style: Theme.of(context).textTheme.bodyMedium,),
                    const SizedBox(height: 10,),

                  ],
                ),
                ReadMoreText(
                  'Thank you so much, Tiger! We are thrilled to hear you enjoyed our fresh produce and service. Your feedback means the world to us',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: const TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w600,color: Colors.green
                  ),
                  lessStyle: const TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w600,color:Colors.green
                  ),
                ),
              ],
            ),
          ),
        ),

        Divider(
          thickness: 1,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
