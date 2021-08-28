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
import 'package:flutter_routing/constants/app_strings.dart';
import 'package:flutter_routing/widgets/auth_screen_widgets.dart';
import 'package:flutter_routing/widgets/socialButtons/social_button_long.dart';

import 'form/login_form.dart';

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
    // NavigationController.navigator.push(Routes.signup);
  }
}
