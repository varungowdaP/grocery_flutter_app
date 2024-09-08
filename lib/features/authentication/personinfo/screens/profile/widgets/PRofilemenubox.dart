import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../util/constants/sizes.dart';

class Profilemenubox extends StatelessWidget {
  const Profilemenubox({
    super.key, required this.value, required this.title, this.onPressed,  this.icon=Iconsax.arrow_right_3,
  });
final String value,title;
final VoidCallback? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems /2),
        child: Row(
          children: [
            Expanded(flex:3,child: Text(title,style: Theme.of(context).textTheme.headlineMedium,overflow: TextOverflow.ellipsis,)),
            Expanded(flex:6,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
             Expanded(child: Icon(icon,size: 18,))


          ],
        ),
      ),
    );
  }
}
