import 'package:flutter/cupertino.dart';

class MyCustomCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
