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
    this.borderRadiusDialog = 10,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusDialog),
      ),
      contentPadding: EdgeInsets.zero,
      backgroundColor: backgroundColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: colorTextMessage,
              ),
            ),
          ),
          Column(
            children: [
              Divider(
                color: Colors.white,
                height: 1,
              ),
              TextButton(
                child: Text(
                  txtButtonClose,
                  style: TextStyle(color: colorTxtButtonClose),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
