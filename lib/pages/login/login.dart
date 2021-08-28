// Copyright (c) 2020 Aniket Malik [aniketmalikwork@gmail.com]
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the
// property of Aniket Malik. The intellectual and technical concepts
// contained herein are proprietary to Aniket Malik and are protected
// by trade secret or copyright law.
//
// Dissemination of this information or reproduction of this material
// is strictly forbidden unless prior written permission is obtained from
// Aniket Malik.


import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 100,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              HeaderImage(),
              SizedBox(height: 20),
              HeaderText(
                title: AppStrings.login,
                body: AppStrings.loginTagLine,
              ),
              LoginForm(),
              SocialButtonLong.google(
                label: AppStrings.loginWithGoogle,
              ),
              SizedBox(height: 20),
              FooterQuestion(
                buttonLabel: AppStrings.signup,
                questionText: AppStrings.loginQues,
                onPress: _goToSignup,
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void _goToSignup() {
    NavigationController.navigator.push(Routes.signup);
  }
}
