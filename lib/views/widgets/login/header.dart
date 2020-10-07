import 'package:flutter/material.dart';
import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/utils/header_clip.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final double headerHeight = orientation == Orientation.portrait ? 250 : 150;
    return Stack(
      children: [
        ClipPath(
          clipper: CustomClipPath(
            direction: orientation,
            portraitHeightStart: 60,
            landscapeHeightStart: 40,
            portraitHeightCenter: 30,
            landscapeHeightCenter: 20,
            portraitHeightEnd: 60,
            landscapeHeightEnd: 30,
          ),
          child: Container(
            width: double.infinity,
            height: headerHeight,
            color: AppColors.dark_red,
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(
            direction: orientation,
            portraitHeightStart: 74,
            landscapeHeightStart: 45,
            portraitHeightCenter: 40,
            landscapeHeightCenter: 25,
            portraitHeightEnd: 140,
            landscapeHeightEnd: 70,
          ),
          child: Container(
            width: double.infinity,
            height: headerHeight,
            color: Colors.white,
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(
            direction: orientation,
            portraitHeightStart: 76,
            landscapeHeightStart: 45,
            portraitHeightCenter: 43,
            landscapeHeightCenter: 25,
            portraitHeightEnd: 150,
            landscapeHeightEnd: 70,
          ),
          child: Container(
            width: double.infinity,
            height: headerHeight,
            color: Colors.black,
            child: Center(
              child: Text(
                Strings.appTitle,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
