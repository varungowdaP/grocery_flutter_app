import 'package:ecommerce/common/widgets/text/brandtitle.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ttexticoncard extends StatelessWidget {
  const Ttexticoncard({
    super.key, required this.title, required this.maxlines,  this.iconcolor,  this.textcolor, this.textAlign, required this.brandtextsizes,
  });

  final String title;
  final int maxlines;
  final Color? iconcolor, textcolor;
  final TextAlign? textAlign;
  final TextSizes brandtextsizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TBrandText(
          title:title,
          maxlines: maxlines,
          textAlign: textAlign,
          brandtexts:brandtextsizes,




        ),
        ),
        const SizedBox(width: 2,),
        Icon(Icons.loyalty_outlined, color: iconcolor, size: 22,),
      ],
    );
  }
}
