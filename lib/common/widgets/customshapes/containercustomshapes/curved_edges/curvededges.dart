import 'package:flutter/material.dart';
class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var path=Path();
   path.lineTo(0, size.height);
    final firstcurve =Offset(0, size.height-20);
    final lastcurve =Offset(30, size.height -20);
    path.quadraticBezierTo(firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);
   final sfirstcurve =Offset(0, size.height-20);
   final slastcurve =Offset(size.width-30, size.height -20);
   path.quadraticBezierTo(sfirstcurve.dx, sfirstcurve.dy, slastcurve.dx, slastcurve.dy);
   final tfirstcurve =Offset(size.width, size.height-20);
   final tlastcurve =Offset(size.width, size.height);
   path.quadraticBezierTo(tfirstcurve.dx, tfirstcurve.dy, tlastcurve.dx, tlastcurve.dy);


    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }

}
