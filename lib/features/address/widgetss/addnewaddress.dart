import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';
import '../../shop/productshadow/roundcontainer.dart';

class Useraddressadd extends StatelessWidget {
  const Useraddressadd({super.key, required this.selectedaddress});

  final bool selectedaddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundcontainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showborder: true,
      backgroundcolor:
          selectedaddress ? Colors.green.shade50 : Colors.transparent,
      bordercolor: selectedaddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: EdgeInsets.all(5),
      child: Stack(

        children: [

          Positioned(

            left: 132,top: 0,child: selectedaddress
              ? Image.asset(
            dark ? TImages.selectaddress:TImages.selectaddress,
            width: 150.0,
            height: 40.0,
          ):Container(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Home',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge,),
              SizedBox(height: TSizes.sm/2,),
              Divider(),
              Text('#80 5th cross vijaynagar banglore 5660026',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge,),
              SizedBox(height: TSizes.sm/2,),
              Text('9113566253',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge,),
              SizedBox(height: TSizes.sm/2,),

            ],
          )
        ],
      ),
    );
  }
}
