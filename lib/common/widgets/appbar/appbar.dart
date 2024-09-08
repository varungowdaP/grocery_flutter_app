import 'package:ecommerce/util/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key, this.title, this.showbackarrow = false, this.leadingicon, this.actions, this.leadingonPressed, this.centettitle, this.surface, });

  final Widget? title;
  final bool showbackarrow;
  final IconData? leadingicon;
  final List<Widget>? actions;
  final VoidCallback? leadingonPressed;
  final bool? centettitle;
  final  Color? surface;



  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(backgroundColor: Colors.transparent,

          automaticallyImplyLeading: false,

          leading: showbackarrow ? IconButton(onPressed: () => Get.back(),
              icon: const Icon(Iconsax.arrow_left)) :leadingicon !=null? IconButton(
              onPressed: () => Get.back(), icon: Icon(leadingicon)):null,

          title: title,
        actions: actions,
        centerTitle: centettitle,
        surfaceTintColor: surface,



      ),


    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUnits.getAppBarHeight());
}
