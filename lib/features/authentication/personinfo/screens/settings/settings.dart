import 'dart:ui';

import 'package:ecommerce/common/textcontainer/sectionheading.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/customshapes/containercustomshapes/curved_edges/primary_header_container.dart';

import 'package:ecommerce/common/widgets/listtlies/settingalltiles.dart';
import 'package:ecommerce/features/address/address.dart';
import 'package:ecommerce/features/authentication/personinfo/screens/profile/widgets/profile.dart';
import 'package:ecommerce/features/orders/orders.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/listtlies/settingslisttiles.dart';
import '../../../../../util/constants/colors.dart';


class SettingsScreens extends StatelessWidget {
  const SettingsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //todo header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
               TAppBar(
                 title: Text('Person Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white,decoration: TextDecoration.underline),),),
                Tuser(onPressed: ()=>Get.to( ()=>const ProfileScreen())),
                const SizedBox(height: 4,),
                //user profile

                const SizedBox(height:22,),
              ],
            ),
            ),
            //todo body
             Padding(padding:  EdgeInsets.all(2),
            child: Column(
              children: [
                sectionheading(title: 'Account Settings',textcolor:TColors.chi ,),
              SizedBox(height:2,),
                TSettingmenu(icon: Iconsax.safe_home, title: 'Address', subtitle:'Select your Delivery address' ,onTap: ()=>Get.to(()=>useraddress()),),
                TSettingmenu(icon: Iconsax.security_card, title: 'orders', subtitle:'Ensure your personal information remains secure and confidential.' ,onTap: ()=>Get.to(()=>OrderScreens()),),
                TSettingmenu(icon: Iconsax.shopping_cart, title: 'cart', subtitle:'Review your selected items before proceeding to checkout' ,onTap: (){},),
                TSettingmenu(icon: Iconsax.bank, title: 'Bank accounts', subtitle:'Manage and view your linked bank accounts securely' ,onTap: (){},),
                TSettingmenu(icon: Iconsax.notification5, title: 'Notifications', subtitle:'Stay updated with the latest alerts and messages' ,onTap: (){},),
                TSettingmenu(icon: Iconsax.discount_shape, title: 'Coupons', subtitle:'Discover savings with exclusive discounts and offers' ,onTap: (){},),
             //toogle
                SizedBox(height: 11,),
                sectionheading(title: 'App settings',textcolor: TColors.black,),
                SizedBox(height: 8,),
                TSettingmenu(icon: Iconsax.document_upload5, title: 'upload ', subtitle:'Discover savings with exclusive discounts and offers' ,onTap: (){},),
                TSettingmenu(icon: Iconsax.location5, title: 'location', subtitle:'Discover savings with exclusive discounts and offers' ,onTap: (){},traling: Switch(value: true,onChanged: (value){},),),
                TSettingmenu(icon: Iconsax.wallet5, title: 'UPI wallet', subtitle:'Discover savings with exclusive discounts and offers' ,onTap: (){},traling: Switch(value: false,onChanged: (value){},),),
                TSettingmenu(icon: Iconsax.profile_2user, title: 'Customer service', subtitle:'Contact us for assistance and support anytime' ,onTap: (){},traling: Switch(value: false,onChanged: (value){},),),


              ],
            ),)
          ],
        ),
      ),
    );
  }
}

