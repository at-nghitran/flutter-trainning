// Cores
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Controllers
import 'package:flutter_driving/controllers/login_controller.dart';
// Utils
import 'package:flutter_driving/utils/constants/index.dart';
import '../../utils/constants/strings/index.dart' as strings;
// Views
import 'package:flutter_driving/views/widgets/commons/custom_texfield.dart';
import 'package:flutter_driving/views/widgets/login/header.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final LoginController _loginController = Get.put(LoginController());
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginHeader(),
            if (orientation == Orientation.portrait) SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(Numbers.appPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: _loginController.emailController,
                    text: strings.email,
                    icon: Icons.email,
                    onChange: (value) {
                      _loginController.onEmailChange();
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    controller: _loginController.passwordController,
                    text: strings.password,
                    icon: Icons.lock,
                    obscureText: true,
                    onChange: (value) {
                      _loginController.onPasswordChange();
                    },
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: _loginController.isDisabled.value
                          ? Colors.white
                          : AppColors.dark_red,
                    ),
                    child: OutlineButton(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      textColor: Colors.black,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      disabledTextColor: Colors.grey,
                      onPressed: _loginController.isDisabled.value
                          ? null
                          : () {
                              FocusScope.of(context).unfocus();
                              _loginController.onLogin();
                            },
                      child: Text(
                        strings.login,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: _loginController.isDisabled.value
                              ? Colors.grey
                              : Colors.white,
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
