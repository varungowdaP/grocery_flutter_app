import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/images/roundedimagesslide.dart';
import '../../../../../util/constants/image_string.dart';

class crousalsliderfull extends StatelessWidget {
  const crousalsliderfull({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:180,width:double.infinity,
      child: CarouselSlider(
        items: const [TRoundedimages(image1: TImages.a1,),
          TRoundedimages(image1: TImages.a2,),
          TRoundedimages(image1: TImages.a3,),
          TRoundedimages(image1: TImages.a4,),
          TRoundedimages(image1: TImages.a5,),],
        options: CarouselOptions(
          viewportFraction: 1,
          reverse: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true,
          enlargeFactor: 0.5,
        ),
      ),
    );
  }
}