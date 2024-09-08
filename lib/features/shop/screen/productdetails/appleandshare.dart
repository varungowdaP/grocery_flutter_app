import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../util/constants/image_string.dart';

class AppleAndShare extends StatelessWidget {
  const AppleAndShare({
    Key? key,
    this.p1,
  }) : super(key: key);

  final String? p1;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              p1 ?? '', // Ensure p1 is not null
              style: const TextStyle(overflow: TextOverflow.visible),
            ),
            Row(
              children: [
                Image(
                  image: const AssetImage(TImages.applegif),
                  width: 60,
                  height: 60,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share_sharp,
            size: 24,
          ),
        ),
      ],
    );
  }
}
