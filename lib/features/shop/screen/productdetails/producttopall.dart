import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/customshapes/containercustomshapes/curved_edges/curvededgeswidget.dart';
import '../../../../common/widgets/iconbuttondirect/lovebuttons.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/helpers/helper_function.dart';

class productalldetails extends StatelessWidget {
  const productalldetails({
    super.key,
    this.dark,
  });

  final bool? dark;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return TCurvededges_widget(child: Container(
      color: dark? TColors.darkGrey:TColors.llight,
      child:  Stack(
        children: [

          SizedBox(height:400,child: Padding(
            padding: EdgeInsets.all(16),
            child: Center(child: Image(image: AssetImage(TImages.cabbage))),

          )),
          TAppBar(showbackarrow: true,
            actions: [
              TLovebutton(icon: Iconsax.heart5,color: Colors.red,)
            ],),
          //todo imageslider
          //   TRoundedimages(image1: TImages.saletag,width:80,backgroundcolor: dark?TColors.dark:TColors.white,),

        ],
      ),

    ),);
  }
}