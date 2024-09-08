import 'package:ecommerce/common/textcontainer/sectionheading.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/roundedimagesslide.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../util/constants/sizes.dart';
import '../../../../../../util/helpers/helper_function.dart';
import 'PRofilemenubox.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: TRoundedimages(
                  image1: TImages.user,
                  width: 70,
                  height: 70,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Change Profile Picture'),
              ),
              // Divider line
              const SizedBox(
                height: 3,),
              const Divider(
               thickness: 2,
                indent: 1,
                endIndent: 10,

              ),
              const SizedBox(
                height: 7,),
              const sectionheading(title: 'Profile Information',showactionbutton: false,textcolor: TColors.chi,)
              ,const SizedBox(
                height: 7,),
              Profilemenubox(value: 'HD Kumaraswamy', title: 'Name:',icon: Iconsax.personalcard,onPressed: (){},),
              Profilemenubox(value: 'KumaraswamyRee@gmail.com', title: 'Email:',icon: Iconsax.direct_inbox5,onPressed: (){},),
              Profilemenubox(value: '100', title: 'number:',icon: Iconsax.mobile5,onPressed: (){},),
              Profilemenubox(value: 'men', title: 'Gender:',icon: Iconsax.profile_2user,onPressed: (){},),
              Profilemenubox(value: '01-01-1947', title: 'DOB:',onPressed: (){},),
              Profilemenubox(value: 'Butler', title: 'username:',onPressed: (){},),
              const Divider(),
              const SizedBox(height: 8,),
              Center(
                child:
                TextButton(onPressed: (){}, child:const  Text('Delete Profile',style: TextStyle(color: Colors.red),),

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

