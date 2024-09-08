import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_string.dart';
import '../images/roundedimagesslide.dart';

class Tuser extends StatelessWidget {
  const Tuser({
    super.key, this.onPressed,
  });
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TRoundedimages(image1: TImages.user,height: 60,width: 60,),
      title: const Text('Rock is cooking',style:TextStyle(color: TColors.white,),),
      subtitle: Text('IamRock@gmail.com',style:TextStyle(color: TColors.white,decoration: TextDecoration.underline),),
      trailing: IconButton(onPressed:onPressed,icon: const Icon (Iconsax.user_edit)),iconColor: TColors.white,);
  }
}
