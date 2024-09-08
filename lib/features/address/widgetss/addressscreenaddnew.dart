import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/image_string.dart';
import '../../../util/constants/sizes.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        showbackarrow: true,
        title: Text('New Address'),
      ),
      body: SingleChildScrollView(

        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Form(
          child: Column(
            children: [Row(
              children: [
                Image(image: AssetImage(TImages.selectaddressboy),width: 260,height: 220,fit: BoxFit.cover,),
              ],
            ),
              Column(
                children: [
                  TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.building5),labelText: 'Name'),),
                  SizedBox(height: 10,),
                  TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.mobile5),labelText: 'Phone'),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Flexible(flex: 1,child: TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.signpost),labelText: 'Door no'),)),
                      SizedBox(width: 10,),
                      Flexible(flex: 3,child: TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.global),labelText: 'street'),)),
                      
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Flexible(flex: 3,child: TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.location_add),labelText: 'Area'),)),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Flexible(flex: 3,child: TextFormField(decoration: InputDecoration(prefixIcon:Icon( Iconsax.location_add5),labelText: 'city'),)),


                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                       Expanded(child: ElevatedButton(onPressed: () {  }, child: Text('Save Address'),))
                    ],
                  )


                ],
              ),
            ],
          ),
        ),),
      ),








    );
  }
}
