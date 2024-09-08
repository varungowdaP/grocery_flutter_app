import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/Review/widgets/allrange.dart';
import 'package:ecommerce/features/shop/Review/widgets/bigReview.dart';
import 'package:ecommerce/features/shop/Review/widgets/reviewrange.dart';
import 'package:ecommerce/features/shop/Review/widgets/useerreview.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/enums.dart';
import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';
class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Reviews'),
        showbackarrow: true,
        centettitle: true,



      ),
        body:SingleChildScrollView(
child: Padding(
  padding: const EdgeInsets.all(TSizes.defaultSpace),
  child: Column(

    mainAxisAlignment:MainAxisAlignment.start,
    children: [
const Text('Rateings and Reviews'),



       


      Divider(thickness: 1,),
          const  SizedBox(height: 5,),
      big_review(title: '4.2',),
      Allrange(),
      //todo user listwithpics
      UserRevieCard(),
      UserRevieCard(),
      UserRevieCard(),



    
    


    ],
  ),
),
        )

    );
  }
}






