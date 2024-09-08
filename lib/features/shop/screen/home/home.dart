import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/customshapes/containercustomshapes/curved_edges/curvededges.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/coursaliderfull.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/homeappbar.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/homeslider.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/productcartvertical.dart';
import 'package:ecommerce/util/constants/image_string.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/textcontainer/sectionheading.dart';
import '../../../../common/widgets/customshapes/containercustomshapes/circular_container.dart';
import '../../../../common/widgets/customshapes/containercustomshapes/curved_edges/curvededgeswidget.dart';
import '../../../../common/widgets/customshapes/containercustomshapes/curved_edges/primary_header_container.dart';
import '../../../../common/widgets/customshapes/containercustomshapes/curved_edges/searchcontainer.dart';
import '../../../../common/widgets/imageiconslider/imageiconslder.dart';
import '../../../../common/widgets/images/roundedimagesslide.dart';
import '../../../../common/widgets/layout/grigsl.dart';
import '../../../../common/widgets/productscart/cartmenuicon.dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/constants/text_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    // todo appbar
                    THomeappbar(),
                    // todo search bar
                    SizedBox(
                      height: 32,
                    ),
                    TSearchContainer(
                      text: 'search for grocery',
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwSection,
                    ),
                    // todo categories scrolling right left
                    Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                          sectionheading(
                            title: 'popular products',
                            showactionbutton: false,
                            textcolor: Colors.white,
                          ),
                          SizedBox(height: 6),

                          ///categories
                          THomeslider(),
                          const SizedBox(height: 12,)
                        ],
                      ),
                    )
                  ],
                )),
            //todo body of the image in the carsel slider
            Padding(
              padding:
              const EdgeInsets.only(top: 2, bottom: 7, left: 17, right: 17),

              child: Column(
                children: [
                  const crousalsliderfull(),
                   sectionheading(title:'fresh products',onPressed: () {},textcolor:TColors.chi ,line: TextDecoration.underline,),
                  Tgrid(itemcount: 8, mm:295,itemBuilder: (_,index) =>const TProductcardvertical(),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




