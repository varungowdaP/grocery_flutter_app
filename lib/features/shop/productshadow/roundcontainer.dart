import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';

class TRoundcontainer extends StatelessWidget {
  const TRoundcontainer(
      {super.key,
      this.width,
      this.height,
        this.padding,
        this.margin,
       this.radius=TSizes.md,
      this.child,
       this.showborder=false,
       this.bordercolor=TColors.borderPrimary,
       this.backgroundcolor=TColors.white,

      });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showborder;
  final Color bordercolor;
  final Color backgroundcolor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,

      decoration: BoxDecoration(
        color: backgroundcolor,

        borderRadius: BorderRadius.circular(radius),
        border: showborder ? Border.all(color: bordercolor) : null,

      ),
      child: child,
    );
  }
}
