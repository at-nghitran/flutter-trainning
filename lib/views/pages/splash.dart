// Cores
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
// Utils
import 'package:flutter_driving/utils/constants/index.dart';
// Views
import 'package:flutter_driving/views/pages/login.dart';

class SplashPage extends StatelessWidget {
  Future _delayScreenTime(BuildContext context) {
    return Future.delayed(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _delayScreenTime(context),
    );
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text(
            Strings.appTitle,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
