// Cores
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Views
import 'package:flutter_driving/views/widgets/commons/custom_alert.dart';
import 'package:flutter_driving/views/pages/home.dart';
// Models
import 'package:flutter_driving/models/login_info.dart';
// Utils
import '../utils/constants/strings/index.dart' as strings;

class LoginController extends GetxController {
  final loginInfo = LoginInfo().obs;
  final isSuccess = false.obs;
  final isDisabled = true.obs;
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.onClose();
  }

  onEmailChange() {
    checkDisable();
  }

  onPasswordChange() {
    checkDisable();
  }

  onLogin() {
    _validation();
  }

  _validation() {
    if (emailController.text.trim() != 'training@gmail.com' ||
        passwordController.text.trim() != '123456') {
      Get.dialog(
        CustomAlertDialog(message: strings.accountIncorrect),
      );
    } else {
      isSuccess.value = true;
      loginInfo.value.email = emailController.text;
      loginInfo.value.password = passwordController.text;
      Get.off(HomePage());
    }
  }

  checkDisable() {
    if (emailController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      isDisabled.value = true;
    } else {
      isDisabled.value = false;
    }
  }
}
