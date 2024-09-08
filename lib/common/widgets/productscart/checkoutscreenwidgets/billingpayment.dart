import 'package:ecommerce/util/constants/sizes.dart';
import 'package:flutter/material.dart';
class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$145',style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/3,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$45',style: Theme.of(context).textTheme.labelMedium,),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('GST',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$5',style: Theme.of(context).textTheme.labelMedium,),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Ordertotal',style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$145',style: Theme.of(context).textTheme.titleMedium,),

          ],
        ),
      ],
    );
  }
}
