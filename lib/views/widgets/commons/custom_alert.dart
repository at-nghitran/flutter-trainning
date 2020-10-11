// Cores
import 'package:flutter/material.dart';
import 'package:flutter_driving/utils/constants/colors.dart';
import 'package:get/get.dart';

class CustomAlertDialog extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final Color colorTextMessage;
  final Color colorTxtButtonClose;
  final String txtButtonClose;
  final double borderRadiusDialog;

  const CustomAlertDialog({
    @required this.message,
    this.txtButtonClose = 'Close',
    this.backgroundColor = Colors.black,
    this.colorTextMessage = Colors.white,
    this.colorTxtButtonClose = AppColors.dark_red,
    this.borderRadiusDialog = 30,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusDialog),
      ),
      backgroundColor: backgroundColor,
      content: Padding(
        padding: EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: colorTextMessage,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Colors.white,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {
                Get.back();
              },
              child: Text(
                txtButtonClose,
                style: TextStyle(color: colorTxtButtonClose),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
