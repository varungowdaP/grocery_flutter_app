import 'package:ecommerce/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/socialmedia_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/signupwidgets/signupform.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,

              children: [
                const SizedBox(height:1,),
                ///title

                Text(TTexts.signUp,
                    style: Theme.of(context).textTheme.headlineMedium),

                ///form
              const  TSignUpForm()
                
              ],
            ),
          ),
        ));
  }
}


