import 'package:ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_utility.dart';
import '../../../../../util/helpers/helper_function.dart';



class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnboardingController.instance;
    final dark =THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUnits.getBottomNavigationHeSight(),
      left: TSizes.defaultSpace,

      child: SmoothPageIndicator(controller: controller.pageController,onDotClicked: controller.dotNavigatorClick, count: 3,
        effect:JumpingDotEffect(activeDotColor:dark ? TColors.light:TColors.dark,dotHeight: 7,dotWidth: 50),
      ),

    );
  }
}