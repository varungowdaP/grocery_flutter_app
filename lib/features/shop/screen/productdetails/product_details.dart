
import 'package:ecommerce/common/textcontainer/sectionheading.dart';
import 'package:ecommerce/common/widgets/productstext/cashtext.dart';
import 'package:ecommerce/features/shop/Review/Review.dart';
import 'package:ecommerce/features/shop/screen/productdetails/belowshare.dart';
import 'package:ecommerce/features/shop/screen/productdetails/bottomnavigationbar.dart';
import 'package:ecommerce/features/shop/screen/productdetails/producttopall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';


import '../../../../util/constants/colors.dart';

import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_string.dart';
import '../../../../util/helpers/helper_function.dart';
import 'appleandshare.dart';
import 'belowshare2.dart';
class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return   Scaffold(
      bottomNavigationBar: TBottomProduct(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //todo appbar image
            productalldetails(),
            Padding(padding: EdgeInsets.only(right: TSizes.defaultSpace,left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),

                child: Column(
                  children: [
                   AppleAndShare (p1: 'cabbage'),
                    belowshare2(t1: '69 Caleories', t2: '10-20 minutes', t3: '4.1',),
                    Divider(
                      thickness: 2,
                      color: TColors.chi,

                    ),
                    rupeesandtext(information: 'Cabbage is a leafy green or purple biennial plant, grown as an annual vegetable crop for its dense-leaved heads. It is a versatile vegetable used in various culinary dishes and is known for its nutritional benefits',),
                    SizedBox(width:double.infinity,child: ElevatedButton(onPressed: (){}, child: Text('CheckOut'))),
                    const SizedBox(height:20,),
                    Row(
                      children: [
                        sectionheading(title: 'Quick Recipe',textcolor: TColors.chi,),
                        Row(
                          children: [
                             Image(
                              image: const AssetImage(TImages.u1),
                              width: 60,
                              height: 60,
                            ),
                          ],
                        )

                      ],
                    ),
                    Divider(thickness: 1,),


                    ReadMoreText(TTexts.cabbagereceipe,
                      trimLines: 4,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'show Less',
                      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: Colors.indigo.shade900),
                      lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800, color: Colors.blue),

                    ),
                    const Divider(
                      thickness: 2,

                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [sectionheading(title:'Reviews(199)',onPressed: (){}, textcolor: dark? TColors.white:TColors.black,),
                      IconButton(onPressed: ()=> Get.to(()=>ProductReview()), icon: const Icon(Iconsax.arrow_right_3,size: 19,))






                      ],
                    )

                  ],


                ),






            ),






          ],
        ),
      ),
    );
  }
}






