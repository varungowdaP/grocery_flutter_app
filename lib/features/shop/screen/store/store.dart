import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/textcontainer/sectionheading.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tab.dart';
import 'package:ecommerce/common/widgets/customshapes/containercustomshapes/curved_edges/searchcontainer.dart';
import 'package:ecommerce/common/widgets/layout/grigsl.dart';
import 'package:ecommerce/common/widgets/productscart/cartmenuicon.dart';
import 'package:ecommerce/features/shop/productshadow/roundcontainer.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/coursaliderfull.dart';
import 'package:ecommerce/features/shop/screen/home/widgets/productcartvertical.dart';
import 'package:ecommerce/features/shop/screen/store/widgets/icontext.dart';
import 'package:ecommerce/features/shop/screen/store/widgets/mosssambi.dart';
import 'package:ecommerce/features/shop/screen/store/widgets/srollnot.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../../common/widgets/images/storecirculat..dart';
import '../../../../util/constants/colors.dart';
import '../../../../util/constants/enums.dart';
import '../../../../util/constants/image_string.dart';
import '../../../../util/constants/sizes.dart';

class Storesview extends StatelessWidget {
  const Storesview({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Shop',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(decoration: TextDecoration.underline),
          ),
          actions: [
            TCartcountericon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, insidescrool) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.dark : TColors.white,
                expandedHeight: 500,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: 12),
                      const TSearchContainer(
                        text: 'start shopping',
                        showbackground: false,
                        showborder: true,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(height: TSizes.spaceBtwSection),
                      sectionheading(
                        title: 'Shop by category',
                        line: TextDecoration.underline,
                        onPressed: () {},
                        textcolor: dark ? TColors.dark : TColors.chi,
                      ),
                      const SizedBox(height: 13),
                      Tgrid(
                        itemcount: 2,
                        mm: 140,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: const TRoundcontainer(
                              padding: EdgeInsets.all(TSizes.sm),
                              showborder: true,
                              backgroundcolor: TColors.zzz,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Mcircularstoreicon(
                                      image: TImages.r1,
                                      isNetworkimage: false,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Ttexticoncard(
                                          title: 'fresh vegetables',
                                          maxlines: 1,
                                          brandtextsizes: TextSizes.large,
                                        ),
                                        Text(
                                          'fresh items',
                                          overflow: TextOverflow.ellipsis,

                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const MTabbar(
                  tabs: [
                    Tab(child: Text('vegetables')),
                    Tab(child: Text('fruits')),
                    Tab(child: Text('rices')),
                    Tab(child: Text('milk')),
                    Tab(child: Text('diary')),
                  ],
                ),
              ),
            ];
          },
          body:  TabBarView(
            children: [
              // Add your TabBarView content here
              ScrollNotWorking(),
            ],
          ),
        ),
      ),
    );
  }
}




