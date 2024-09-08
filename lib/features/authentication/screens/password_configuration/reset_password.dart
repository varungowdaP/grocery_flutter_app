import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/util/constants/image_string.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/constants/sizes.dart';

class ResendPassword extends StatelessWidget {
  const ResendPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear_thick)


          )
        ],
      ),
      body: SingleChildScrollView (
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              ///image with 60percent screen widh
              Image(image: const AssetImage(TImages.onBoardingImage3), width:THelperFunctions.screenWidth()*0.6),
               const SizedBox(height: TSizes.spaceBtwSection,),
              ////copy successs

              ///title and subtitle


              ///buttons
            ],
          ),


        ),
      ),
    );
  }
}