import 'package:ecommerce/features/shop/screen/productdetails/TCardmad.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/imageiconslider/imageiconslder.dart';
import '../../../../../util/constants/image_string.dart';

class TCardSliderdata extends StatelessWidget {
  const TCardSliderdata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:125,
      child: ListView.builder(
        itemCount:5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,

        itemBuilder: (_, index) {
          return  TCardmad(

            images: TImages.x1, ontap: () {},


          );
        },
      ),
    );
  }
}