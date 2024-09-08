import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/productscart/cartmenuicon.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/text_string.dart';

class THomeappbar extends StatelessWidget {
  const THomeappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(TTexts.homeAppbarTitle,style: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.grey)),
        Text(TTexts.homeAppbarSubTitle,style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white)),
      ],
    ),
      actions: [
        TCartcountericon(onPressed: () {  }, iconColor:  TColors.white,)
      ],

    );
  }
}
