import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/image_string.dart';
import '../../../../../util/constants/text_string.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
        Image(
          height:100,
          image:AssetImage(dark ? TImages.lightAppLogo: TImages.darkAppLogo),
        ),
        Text(TTexts.loginTitle,style:Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height:1),
        Text(TTexts.loginSubTitle,style:Theme.of(context).textTheme.bodyMedium),



      ],
    );
  }
}