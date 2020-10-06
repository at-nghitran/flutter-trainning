import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  final Orientation direction;
  final double portraitHeightStart;
  final double landscapeHeightStart;
  final double portraitHeightCenter;
  final double landscapeHeightCenter;
  final double portraitHeightEnd;
  final double landscapeHeightEnd;
  CustomClipPath({
    this.direction,
    this.portraitHeightStart,
    this.landscapeHeightStart,
    this.portraitHeightCenter,
    this.landscapeHeightCenter,
    this.portraitHeightEnd,
    this.landscapeHeightEnd,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 4,
      size.height -
          (direction == Orientation.portrait
              ? portraitHeightStart
              : landscapeHeightStart),
      size.width / 2,
      size.height -
          (direction == Orientation.portrait
              ? portraitHeightCenter
              : landscapeHeightCenter),
    );
    path.quadraticBezierTo(
      3 / 4 * size.width,
      size.height,
      size.width,
      size.height -
          (direction == Orientation.portrait
              ? portraitHeightEnd
              : landscapeHeightEnd),
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
