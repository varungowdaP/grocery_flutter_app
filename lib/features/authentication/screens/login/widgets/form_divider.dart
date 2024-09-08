import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/text_string.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.darkGrey:TColors.grey,thickness: 0.5,indent: 30,endIndent: 5,)),
        Text(TTexts.orSignInWith.capitalize!,style: Theme.of(context).textTheme.labelSmall),
        Flexible(child: Divider(color: dark ? TColors.darkGrey:TColors.grey,thickness: 0.5,indent: 5,endIndent: 30,)),

      ],
    );
  }
}