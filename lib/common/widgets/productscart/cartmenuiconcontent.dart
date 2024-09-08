import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/iconbuttondirect/lovebuttons.dart';
import 'package:ecommerce/common/widgets/images/roundedimagesslide.dart';
import 'package:ecommerce/common/widgets/productscart/checkout/cartcheckout.dart';
import 'package:ecommerce/common/widgets/productscart/widgets/cartbottomnavigator.dart';
import 'package:ecommerce/common/widgets/productscart/widgets/cartitems.dart';
import 'package:ecommerce/common/widgets/productscart/widgets/plusminuscart.dart';
import 'package:ecommerce/common/widgets/productstext/cashtext.dart';
import 'package:ecommerce/features/shop/screen/store/widgets/icontext.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';
import '../productstext/productstext.dart';
import 'cartpage.dart';

class cartscreen extends StatelessWidget {
  const cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(

      appBar: TAppBar(

        showbackarrow: true,
        title: Text(
          'My Cart',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Cartpage(dark: dark),
            ),
      bottomNavigationBar:cartbottom(onpressed: ()=> Get.to (()=>TCheckoutcart()),),

    );
  }
}


