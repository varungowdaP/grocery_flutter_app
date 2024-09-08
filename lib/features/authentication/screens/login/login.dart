import 'package:ecommerce/features/authentication/screens/login/widgets/form_divider.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/loginform.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/loginform_header.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/socialmedia_button.dart';
import 'package:ecommerce/util/constants/text_string.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce/util/constants/image_string.dart';

import '../../../../common/style/spacing_style.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyle.paddingWithAppBarHeight,
                child:Column(
                  children: [
                    ///login header
                  TLoginHeader(dark: dark),
                /// login form
                const TLoginForm(),


    ///divider
    TFormDivider(dark: dark),
    const SizedBox(height:27 ),




                    ///footer image button
   const TSocialButton(),


    ],
    )

    ),
    ),
    );
  }
}







