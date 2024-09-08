import 'package:ecommerce/util/constants/image_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/helpers/helper_function.dart';

class TCardmad extends StatelessWidget {
  const TCardmad({
    super.key,

    this.textcolor=Colors.deepOrange,
    this.background,
    required this.ontap,
    required this.images, this.title,
  });

  final String images;
  final String? title;
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
              width: 100,
              height: 100,
              padding: const  EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: background ,
                borderRadius: BorderRadius.circular(100),
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
                  '',
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