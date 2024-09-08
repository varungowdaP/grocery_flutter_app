import 'package:flutter/cupertino.dart';

import '../../../../../util/constants/colors.dart';
import '../circular_container.dart';
import 'curvededgeswidget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final  Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvededges_widget(child: Container(
      color: TColors.pprimary,
      padding: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Positioned(top: -150,right: -250,child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1),)),
          Positioned(top: 100,right: -300,child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.7),)),
          child,

        ],
      ),


    ),
    );
  }
}