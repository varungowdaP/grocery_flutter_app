import 'package:ecommerce/common/widgets/productscart/cartmenuiconcontent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';

class TCartcountericon extends StatelessWidget {
  const TCartcountericon({
    super.key,  required this.onPressed,  this.iconColor,
  });
  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: ()=> Get.to
          (()=>cartscreen()), icon:  Icon(Iconsax.shopping_cart5,color: iconColor )),
        Positioned(right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color:Colors.redAccent.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100),

            ),
            child: Center(
              child: Text('2',style:Theme.of(context).textTheme.labelSmall!.apply(color:TColors.white,fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}