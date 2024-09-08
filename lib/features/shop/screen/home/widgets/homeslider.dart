import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/imageiconslider/imageiconslder.dart';
import '../../../../../util/constants/image_string.dart';

class THomeslider extends StatelessWidget {
  const THomeslider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,

        itemBuilder: (_, index) {
          return  TVerticalimage(
            title:'peer',
            images: TImages.watwrmelon, ontap: () {},


          );
        },
      ),
    );
  }
}