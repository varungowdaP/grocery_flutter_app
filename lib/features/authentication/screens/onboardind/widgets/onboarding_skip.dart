import 'package:ecommerce/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../util/constants/sizes.dart';
import '../../../../../util/device/device_utility.dart';


class SkipButtonPages extends StatelessWidget {
  const SkipButtonPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:TDeviceUnits.getAppBarHeight(),
        right:10,


        child: TextButton(onPressed: ()=>OnboardingController.instance.skipPage(),child: const Text('skip'),));
  }
}