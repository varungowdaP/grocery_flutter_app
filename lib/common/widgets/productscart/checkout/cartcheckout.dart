import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/productscart/cartpage.dart';
import 'package:ecommerce/common/widgets/productscart/checkoutscreenwidgets/billingaddress.dart';
import 'package:ecommerce/common/widgets/productscart/checkoutscreenwidgets/billingpayment.dart';
import 'package:ecommerce/common/widgets/productscart/checkoutscreenwidgets/paymentaddaddress.dart';
import 'package:ecommerce/features/authentication/screens/signup/success_screen.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/features/shop/screen/home/home.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';
import '../checkoutscreenwidgets/coupons.dart';
import '../widgets/cartbottomnavigator.dart';
class TCheckoutcart extends StatelessWidget {
  const TCheckoutcart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar:cartbottom(onpressed: () => Get.to(()=>SuccessScreen(image:TImages.c, title: 'Payment Success', subTitle: 'Thanks for shopping with us', onPressed: ()=>Get.to(()=>HomeScreen()))),),
      appBar: TAppBar(
        showbackarrow: true,
        title: Text('Checkout',style: Theme
          .of(context).textTheme.headlineMedium,),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(TSizes.defaultSpace),
          child:Column(
            children: [
              Cartpage(showADDRemoveButton: false,),
              SizedBox(height: TSizes.spaceBtwSection,),
              //todo coupons
              Coupons(),
              SizedBox(height: TSizes.spaceBtwSection,),
              //todo billing madu
              TRoundcontainer(
                padding: EdgeInsets.all(TSizes.md),
                backgroundcolor: dark?TColors.dark:TColors.white,
                showborder: true,
                child: Column(

                  //todo pricing
                  children: [

                    BillingPayment(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    //todo divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    Billingaddress(),
                    PaymentRealaddress(),

                  ],



                  //todo payment methods
                  //todo address
                ),
              )


            ],
          )

        ),
      ),
    );
  }
}


