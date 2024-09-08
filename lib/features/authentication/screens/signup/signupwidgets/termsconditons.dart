import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../util/helpers/helper_function.dart';

class TTermsConditionBox extends StatelessWidget {
  const TTermsConditionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 12,height:24.0,child: Padding(
          padding: const EdgeInsets.only(left: 12,top: 30),
          child: Checkbox(value:true, onChanged: (value){},activeColor: Colors.green,focusColor: Colors.red,),
        ))

      ], );
  }
}