import 'package:flutter/cupertino.dart';

import '../../../../util/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 300,
    this.radius = 40,
    this.padding = 0,
    this.backgroundColor = TColors.white,
    this.child,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
