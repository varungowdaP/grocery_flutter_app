import 'package:ecommerce/features/authentication/screens/signup/email_verifaction.dart';
import 'package:ecommerce/features/authentication/screens/signup/signupwidgets/termsconditons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_string.dart';
import '../../../../../util/helpers/helper_function.dart';
import '../../login/widgets/socialmedia_button.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        SizedBox(
          width: 311, height: 63,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user_add4),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user_add4),
                  ),
                ),
              ),
            ],
          ),

          ///username
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        SizedBox(
          height: 58,
          child: TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit4),
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        SizedBox(
          height: 58,
          child: TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct4),
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        SizedBox(
          height: 58,
          child: TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call4),
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        SizedBox(
          height: 58,
          child: TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check4),
                suffixIcon: Icon(Iconsax.eye_slash4)),

            ///terms and conditions
          ),
        ),

        const TTermsConditionBox(),
        const SizedBox(width: TSizes.spaceBtwItems),

        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${TTexts.agree} ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextSpan(
                text: TTexts.privacySettingsHeading,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary)),
            TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
                text: TTexts.terms,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary)),
          ],
        )),
        const SizedBox(height: 13),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () =>Get.to(()=>const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),

        ///divider
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 30,
              endIndent: 5,
            )),
            Text(TTexts.orSignInWith.capitalize!,
                style: Theme.of(context).textTheme.labelSmall),
            Flexible(
                child: Divider(
              color: dark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 30,
            )),
          ],
        ),
        const SizedBox(
          height: 13,
        ),
        const TSocialButton(),

        ///phone number
        ///password
      ],
    ));
  }
}
