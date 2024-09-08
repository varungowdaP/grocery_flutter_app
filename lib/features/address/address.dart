import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/address/widgetss/addnewaddress.dart';
import 'package:ecommerce/features/address/widgetss/addressscreenaddnew.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../util/constants/colors.dart';
import '../../util/constants/sizes.dart';
class useraddress extends StatelessWidget {
  const useraddress({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed: ()=>Get.to(()=>AddNewAddressScreen()),
      child: Icon(Iconsax.add,color:TColors.white),
        backgroundColor: dark?Colors.purple:Colors.green,



      ) ,
      appBar: TAppBar(
        title: Text('address',style:Theme.of(context).textTheme.headlineMedium!.apply(color:  dark ? TColors.white:TColors.black),),
        showbackarrow: true,

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
             Useraddressadd(selectedaddress: false),
             Useraddressadd(selectedaddress: true),

             
            ],
          ),
        ),
      ),
    );
  }
}
