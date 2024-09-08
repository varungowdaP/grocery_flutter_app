import 'package:ecommerce/features/authentication/screens/onboardind/onboarding.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/util/theme/theme.dart';
import 'package:get/get.dart';
import 'package:ecommerce/app.dart';
import 'firebase_options.dart';

 // Import your App widget

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const App(

  ));



  // todo: Initialize local storage
  // await initLocalStorage();

  // todo: Initialize native storage
  // await initNativeStorage();

  // todo: Initialize Firebase

  // await Firebase.initializeApp();

  // todo: Initialize Authentication
  // await initAuthentication();

  // Ensure any necessary initializations are awaited
  // ...

}

