import 'package:flutter/cupertino.dart';

import '../../../../../common/textcontainer/sectionheading.dart';
import '../../../../../common/widgets/layout/grigsl.dart';
import '../../../../../util/constants/colors.dart';
import '../../../../../util/constants/sizes.dart';
import '../../home/widgets/productcartvertical.dart';
import 'mosssambi.dart';

class ScrollNotWorking extends StatelessWidget {
  const ScrollNotWorking({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.spaceBtwSection),
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            // todo sections
            moosambi(
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            moosambi(
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            // todo images of that madu
            sectionheading(
              title: 'items available',
              line: TextDecoration.underline,
              textcolor: TColors.chi,
              onPressed: () {},
            ),
            const SizedBox(height: 8),
            Tgrid(
              itemcount: 6,
              mm: 295,
              itemBuilder: (_, index) => TProductcardvertical(),
            ),
          ],
        ),
      ),
    );
  }
}
