

import 'package:flutter/material.dart';
class TColors{

  TColors._();
 // app basic colors
  static const Color primary=Color(0xFF4868FF);
  static const Color chi=Color(0xFF0A2F08);
  static const Color zzz=Color(0xC058B460);
  static const Color pprimary=Color(0xFF1D7726);
  static const Color secondary=Color(0xFFFFE248);
  static const Color accent=Color(0xff595454);
// gradient color
  static const Gradient linearGradient = LinearGradient(
    colors: [
      Color(0xFFF87A7A), // Corrected hex value
      Color(0xFFB66060), // Corrected hex value
      Color(0xFF944A4A),
    ],
  );
  // Text colors
  static const Color textprimary=Color(0xFF333333);
  static const Color textsecondary=Color(0xFF6C7570);
  static const Color textwhite=Colors.white;
  //background colors
  static const Color light=Color(0xFD0F2EE8);
  static const Color llight=Color(0xFDF5F5F5);
  static const Color dark=Color(0xFD151515);
  static const Color primaryBackground=Color(0xF1F2F5FF);
  //background container color
  static const Color lightContainer=Color(0xFFF6F6F6);
  static  Color darkContainer=Colors.white.withOpacity(0.1);
  //Button colors
static const Color buttonPrimary=Color(0xFD115C94);
static const Color buttonSecondary=Color(0xFD686E73);
static const Color buttonDisabled=Color(0xffa99d9d);
//borders colors
  static const Color borderPrimary=Color(0xFDD0D2D3);
  static const Color borderSecondary=Color(0xFDC0C3C5);
//Error validation color
  static const Color error=Color(0xFDEE0808);
  static const Color success=Color(0xFD2FCB20);
  static const Color warning=Color(0xffb96613);
  static const Color info=Color(0xFD23A0EC);
  //neutral shades
  static const Color black=Color(0xFD1F1D1D);
  static const Color darkGrey=Color(0xFD2D2C2C);
  static const Color darkerGrey=Color(0xFD808580);
  static const Color grey=Color(0xffe7dfdb);
  static const Color softGrey=Color(0xE2E5E9EC);
  static const Color lightGrey=Color(0xFDDCD8D8);
  static const Color white=Color(0xFDF8FAF8);




}