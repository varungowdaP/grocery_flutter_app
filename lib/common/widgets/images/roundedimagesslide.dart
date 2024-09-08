import 'package:flutter/cupertino.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';

class TRoundedimages extends StatelessWidget {
  const TRoundedimages({
    super.key, this.width, this.height, required this.image1,  this.applyimagesradius=true,  this.backgroundcolor=TColors.light, this.fit, this.padding,  this.isnetworkimage=false,  this.br=TSizes.md, this.onPressed,
  });

  final double? width, height;
  final String image1;
  final bool applyimagesradius;
  final Color backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isnetworkimage;
  final double br;

  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,

          decoration: BoxDecoration(borderRadius: BorderRadius.circular(br)),
          child: ClipRRect(
              borderRadius: applyimagesradius
                  ? BorderRadius.circular(br) : BorderRadius.zero,
              child: Image(fit: fit, image: isnetworkimage ? NetworkImage(image1) : AssetImage(image1) as ImageProvider),

          )
      ),

    );

  }
}
