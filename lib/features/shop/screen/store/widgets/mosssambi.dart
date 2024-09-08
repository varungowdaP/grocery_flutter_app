import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/storecirculat..dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/image_string.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../productshadow/roundcontainer.dart';

class moosambi extends StatelessWidget {
  const moosambi({
    super.key, this.onPressed,
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
      child: TRoundcontainer(
        showborder: true,
        bordercolor: TColors.darkGrey,
        backgroundcolor: Colors.transparent,
        margin:  EdgeInsets.only(left:4),
        radius: 10,
        child: Column(
          children: [
            const Mcircularstoreicon(image:TImages.r3,fit: BoxFit.cover,height: 123,),

          ],
        ),
      ),
    );
  }
}