import 'package:ecommerce/util/constants/image_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_function.dart';

class TVerticalimage extends StatelessWidget {
  const TVerticalimage({
    super.key,

    required this.title,
    this.textcolor=TColors.white,
    this.background=TColors.zzz,
    required this.ontap,
    required this.images,
  });

  final String images, title;
  final Color textcolor;
  final Color? background;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    final dark=(THelperFunctions.isDarkMode(context));
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: 7),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const  EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: background ,
                borderRadius: BorderRadius.circular(56),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(images),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            ///todo text
            const SizedBox(
              height: 1,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: textcolor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}