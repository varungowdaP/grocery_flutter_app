import 'package:ecommerce/common/widgets/productscart/widgets/cartitems.dart';
import 'package:ecommerce/common/widgets/productscart/widgets/plusminuscart.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/sizes.dart';
import '../productstext/cashtext.dart';
class Cartpage extends StatelessWidget {
  const Cartpage({
    super.key,
    this.dark=true,  this.showADDRemoveButton=true,
  });

  final bool dark;
  final bool showADDRemoveButton ;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Tcartitems(dark: dark),
                  SizedBox(height: 12,),
                  amountscash(price: '50')
                ],
              ),
              const SizedBox(width: 13,),
             if(showADDRemoveButton) plusminuscart(dark: dark)
            ],
          ),


        ],
      ),
    );
  }
}
