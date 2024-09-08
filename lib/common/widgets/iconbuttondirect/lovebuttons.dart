import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';

class TLovebutton extends StatelessWidget {
  const TLovebutton({
    super.key,

    this.width,
    this.height,
    this.size=TSizes.lg,
    required this.icon,
    this.color,
    this.background,
    this.onPressed,
  });


  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? background;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: background != null
              ? background!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.black.withOpacity(0.9)
                  : TColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onPressed,
        icon: Center(
          child: Icon(
            icon,
            color: color,
            size: size,
          ),
        ),
      ),
    );
  }
}
