import 'package:flutter/material.dart';

import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/utils/header_clip.dart';
import 'package:flutter_driving/views/pages/home.dart';
import 'package:flutter_driving/views/widgets/commons/custom_texfield.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final double headerHeight = orientation == Orientation.portrait ? 250 : 150;
    final bool _isDisabled = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
            ),
            if (orientation == Orientation.portrait) SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(Numbers.appPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    text: 'Email',
                    icon: Icons.email,
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    text: 'Password',
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: _isDisabled ? Colors.white : AppColors.dark_red,
                    ),
                    child: OutlineButton(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      textColor: Colors.black,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      disabledTextColor: Colors.grey,
                      onPressed: _isDisabled
                          ? null
                          : () => {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => HomePage(),
                                  ),
                                )
                              },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _isDisabled ? Colors.grey : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
