import 'package:flutter/material.dart';
import 'package:ecommerce/features/authentication/screens/onboardind/onboarding.dart';
import 'package:ecommerce/util/theme/theme.dart';
import'package:ecommerce/App.dart';
import 'package:get/get.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:const OnBoardingScreen(),
    );
  }
}

  // Todo: add widgets in binding
  // Todo :init locaal storage
  // todo: await native splash
  //todo:initialze authentication

