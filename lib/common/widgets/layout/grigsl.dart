import 'package:flutter/cupertino.dart';

import '../../../features/shop/screen/home/widgets/productcartvertical.dart';

class Tgrid extends StatelessWidget {
  const Tgrid({
    super.key, required this.itemcount,  this.mm, required this.itemBuilder,
  });
  final int itemcount;
  final double? mm;
  final Widget? Function(BuildContext,int)itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemcount,
      shrinkWrap: true,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
          mainAxisExtent:mm ,
      ),
      itemBuilder: itemBuilder,

    );
  }
}