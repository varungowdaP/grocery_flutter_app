import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sectionheading extends StatelessWidget {
  const sectionheading({
    super.key, required this.title, this.buttontitle='view all', this.textcolor=Colors.white,  this.showactionbutton=true,  this.onPressed, this.line,
  });
  final String title,buttontitle;
  final Color textcolor;
  final bool showactionbutton;
  final TextDecoration? line;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineMedium!.apply(color:textcolor,decoration:line),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showactionbutton)TextButton(onPressed: onPressed, child:  Text(buttontitle)),
      ],
    );
  }
}