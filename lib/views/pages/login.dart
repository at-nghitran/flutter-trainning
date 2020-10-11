import 'package:flutter/material.dart';
import 'package:flutter_driving/controllers/login_controller.dart';
import 'package:flutter_driving/utils/constants/index.dart';
import 'package:flutter_driving/views/widgets/commons/custom_texfield.dart';
import 'package:flutter_driving/views/widgets/login/header.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final bool _isDisabled = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoginHeader(),
            if (orientation == Orientation.portrait) SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(Numbers.appPadding),
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(
                      controller: _loginController.emailController,
                      text: 'Email',
                      icon: Icons.email,
                      onChange: (value) {
                        _loginController.onEmailChange();
                      },
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                      controller: _loginController.passwordController,
                      text: 'Password',
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
                        onPressed: _loginController.isDisabled.value
                            ? null
                            : () {
                                FocusScope.of(context).unfocus();
                                _loginController.onLogin();
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
