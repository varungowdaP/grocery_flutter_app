import 'package:ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboardind/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboardind/widgets/onboarding_next_button.dart';
import 'package:ecommerce/features/authentication/screens/onboardind/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboardind/widgets/onboarding_skip.dart';
import 'package:ecommerce/util/constants/image_string.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_string.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../util/constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontally scrollable pages
          PageView(
            controller:controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:const  [
              OnBoardingPage(image:TImages.onBoardingImage3,
                  title:TTexts.onBoardingTitle1,
                  subTitle:TTexts.onBoardingSubTitle1
              ),
              OnBoardingPage(image:TImages.onBoardingImage2,
                  title:TTexts.onBoardingTitle2,
                  subTitle:TTexts.onBoardingSubTitle2
              ),
              OnBoardingPage(image:TImages.gif2,
                  title:TTexts.onBoardingTitle3,
                  subTitle:TTexts.onBoardingSubTitle3
              ),
            ],
          ),

          //skip button
          const SkipButtonPages(),
          /// Dot navigation smooth page indicator
          // Add smooth page indicator code here
              const OnBoardingDotNavigation(),


          /// Circular button
         const OnBoardingNextButton()
          // Add circular button code here
        ],
      ),
    );
  }
}





