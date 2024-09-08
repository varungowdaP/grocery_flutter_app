import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigatonmenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_string.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSection),
      child: Form(child: Column(
        children: [
          ///email
          SizedBox(height: 70,
            child: TextFormField(

              decoration:const  InputDecoration(
                  prefixIcon: Icon(Iconsax.login), labelText:TTexts.email),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          ///password
          SizedBox(height: 70,
            child: TextFormField(
              decoration:const  InputDecoration(
                prefixIcon: Icon(Iconsax.password_check), labelText:TTexts.password,suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields/2 ),
          /// remember me and forget password
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                ///forget password
                Transform.scale(scale:0.7,child: TextButton(onPressed: ()=>Get.to(()=>const ForgetPassword()), child:const Text(TTexts.forgotPassword,))),

              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSection),
          ///sign in button
          SizedBox(width:double.infinity ,child:ElevatedButton(onPressed: () =>Get.to(()=>const NavigationMenu()),child:const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems),
          /// create account button
          SizedBox(width:double.infinity ,child:OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child:const Text(TTexts.createAccount))),


        ],
      ),
      ),

    );
  }
}