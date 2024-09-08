import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:content(),
      backgroundColor: Colors.pinkAccent,

    );
  }
  Widget content(){
    return Container(
      child:Lottie.asset("assets/images/onboarding_images/Untitled_file.json"));
  }
}
