import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/orders/orderswidgets/orderslist.dart';
import 'package:flutter/material.dart';

import '../../util/constants/sizes.dart';
class OrderScreens extends StatelessWidget {
  const OrderScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showbackarrow: true,
        title: Text('My orders'),

      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child:Orderlistsscreens(

        ) ,
      ),
    );
  }
}
