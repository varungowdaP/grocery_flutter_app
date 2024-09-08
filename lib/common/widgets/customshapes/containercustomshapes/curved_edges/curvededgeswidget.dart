import 'package:flutter/cupertino.dart';

import 'curvededges.dart';

class TCurvededges_widget extends StatelessWidget {
  const TCurvededges_widget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper:TCustomCurvedEdges(),
      child: child,
    );
  }
}