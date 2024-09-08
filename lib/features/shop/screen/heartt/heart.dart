import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/customshapes/containercustomshapes/circular_container.dart';
import 'package:ecommerce/common/widgets/layout/grigsl.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/productcartvertical.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
class Favoriteitems extends StatelessWidget {
  const Favoriteitems({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: TAppBar(
        title: Text('Favorites',style: Theme.of(context).textTheme.headlineMedium!.apply(decoration: TextDecoration.underline)),
        actions: [
          TextButton(onPressed:(){}, child: Text('ADD+'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Tgrid(itemcount: 2, mm:295,itemBuilder: (_,index)=>const TProductcardvertical())
            ],
          ),
        ),
      ),
    );
  }
}
