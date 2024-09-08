import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/signup/success_screen.dart';
import 'package:ecommerce/util/constants/image_string.dart';
import 'package:ecommerce/util/constants/text_string.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/constants/sizes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear_thick)),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
                image: const AssetImage(TImages.gif1),
                width: THelperFunctions.screenWidth() * 0.6),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///yiytle and subtitle
            Text(TTexts.confirm,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            Text(
              'support@gms.com',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(TTexts.emailsub,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            ///buttonds
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.gif3,
                    title: TTexts.createAccount,
                    subTitle: TTexts.subsuccess,
                    onPressed: () => Get.to(() => const LoginScreen()))),
                child: const Text(TTexts.vvv),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resend),
              ),
            ),
          ],

          ///image
          ///text an subtitle
        ),
      )),
    );
  }
}
