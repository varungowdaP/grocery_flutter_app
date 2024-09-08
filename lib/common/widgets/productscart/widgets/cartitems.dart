import 'package:flutter/cupertino.dart';

import '../../../../features/shop/screen/store/widgets/icontext.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/enums.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';
import '../../images/roundedimagesslide.dart';
import '../../productstext/productstext.dart';

class Tcartitems extends StatelessWidget {
  const Tcartitems({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      TRoundedimages(image1: TImages.brockli,
        width: 60,
        height: 60,
        padding: EdgeInsets.all(TSizes.sm),
        backgroundcolor: dark ? TColors.accent:TColors.primaryBackground,),
      const SizedBox(height: TSizes.spaceBtwItems,),
      //todo title  price size
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Ttexticoncard(title: 'vegetables', maxlines: 1, brandtextsizes:TextSizes.small),
          TPoductsnames(title:'brokli'),
          ///attributes
          //   Text.rich(
          //   TextSpan(
          //   children: [
          //   TextSpan(text: 'color',style: Theme.of(context).textTheme.labelSmall),


          //]
          //)
          //)

        ],
      )
    ],);
  }
}