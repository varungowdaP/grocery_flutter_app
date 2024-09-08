import 'package:ecommerce/features/authentication/personinfo/screens/settings/settings.dart';
import 'package:ecommerce/features/shop/screen/heartt/heart.dart';
import 'package:ecommerce/features/shop/screen/store/store.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screen/home/home.dart';
class NavigationMenu extends StatelessWidget {

  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigatorController());
    final darkmode=THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
            () =>  NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,

          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          backgroundColor: darkmode ? TColors.black:Colors.white,
          indicatorColor: darkmode ? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'home',),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'heart'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'user')
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigatorController extends GetxController{
  final Rx<int> selectedIndex =0.obs;

  final screens=[const HomeScreen(),const Storesview(),const Favoriteitems(),const SettingsScreens()];
}