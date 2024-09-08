import 'package:flutter/cupertino.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_function.dart';

class Mcircularstoreicon extends StatelessWidget {
  const Mcircularstoreicon({
    super.key,
    this.dark, this.fit=BoxFit.cover, required this.image,  this.isNetworkimage=false, this.displaycolor, this.backgroundcolor,  this.width=800,  this.height=100,  this.padding=TSizes.sm,
  });

  final bool? dark;
 final BoxFit? fit;
 final String image;
 final bool isNetworkimage;
 final Color? displaycolor;
 final Color? backgroundcolor;
 final double width,height,padding;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),

      decoration: BoxDecoration(
        color: dark ? TColors.black:TColors.white,
        borderRadius: BorderRadius.circular(100),


      ),
      child:   Image(fit: fit,
        image: isNetworkimage ? NetworkImage(image):AssetImage(image) as ImageProvider,
         // color: dark ? TColors.white:TColors.black,
      ),
    );
  }
}