import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class belowshare2 extends StatelessWidget {
  const belowshare2({
    super.key, required this.t1, required this.t2, required this.t3, this.i1=Icons.local_fire_department_sharp, this.i2=Icons.alarm_rounded, this.i3=Icons.star_sharp,
  });
  final String t1,t2,t3;
  final IconData? i1,i2,i3;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,



        children: [

          Icon(i1,size: 22,)
          ,Text(t1,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [ Icon(i2,size: 22,)
              ,Text(t2,),
              Row(
                mainAxisSize: MainAxisSize.min,children: [ Icon(i3,size: 22,)
                ,Text(t3,),

              ],)
            ],
          )
        ],
      ),
    );
  }
}