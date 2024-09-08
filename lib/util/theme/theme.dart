import 'package:ecommerce/util/theme/custom_themee/text_field_theme.dart';
import 'package:flutter/material.dart';
import'package:ecommerce/util/theme/custom_themee/text_theme_data.dart';
import 'custom_themee/appbar_theme.dart';
import 'custom_themee/bottom_sheet_theme.dart';
import 'custom_themee/checkbox_theme.dart';
import 'custom_themee/chip_theme.dart';
import 'custom_themee/eleveted_button_theme.dart';
import 'custom_themee/ouylinedtbutton_theme.dart';
class TAppTheme{
  TAppTheme._();
  static ThemeData lightTheme= ThemeData(
      useMaterial3: true,
      fontFamily: 'poppins',
      brightness: Brightness.light,
      primaryColor: Colors.cyan,
      scaffoldBackgroundColor: Colors.white,
      textTheme:TTextTheme.lightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      chipTheme: TChipTheme.lightChipTheme,

    checkboxTheme: TCheckboxTheme .lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutLinedButton.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme


      );


  static ThemeData darkTheme= ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.cyan,
    scaffoldBackgroundColor: Colors.black,
    textTheme:TTextTheme.darkTextTheme,
    elevatedButtonTheme: const  ElevatedButtonThemeData(
      
    )

  );

}