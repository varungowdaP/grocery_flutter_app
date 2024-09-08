

import 'package:ecommerce/App.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/util/theme/custom_themee/text_field_theme.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_string.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/helpers/helper_function.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      image:  const AssetImage(TImages.gif4),
                      width: THelperFunctions.screenWidth() * 0.8),
                ///heading
                  Text(TTexts.forgotPassword,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,),
                  const SizedBox(
                    height: 5,
                  ),



                  Text(TTexts.submit,
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.start),

                  ///text field
            SizedBox(height: 63,
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText:  TTexts.email,prefixIcon:Icon(Iconsax.direct_right5)
                ),
              ),
            ),

            ///submit button
             const SizedBox(height: TSizes.spaceBtwSection,),
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=>Get.to(const ResendPassword()), child:const Text(TTexts.submitButton)))

    ],

    ),





    ),
    );
  }
}