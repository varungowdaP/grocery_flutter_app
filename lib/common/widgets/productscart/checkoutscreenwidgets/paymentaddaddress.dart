import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../textcontainer/sectionheading.dart';
class PaymentRealaddress extends StatelessWidget {
  const PaymentRealaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sectionheading(title: 'Address',buttontitle:'change',textcolor:TColors.chi ,onPressed: () {},),
        Text('My Home',style: Theme.of(context).textTheme.bodyLarge,)

      ],
    );
  }
}
