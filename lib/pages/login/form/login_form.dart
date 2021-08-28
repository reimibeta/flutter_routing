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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_routing/constants/app_strings.dart';
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter_routing/utils/style.dart';
import 'package:flutter_routing/widgets/auth_screen_widgets.dart';

import 'package:url_launcher/url_launcher.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  String? email;
  String? password;
  bool _isLoading = false;
  String errorText = '';
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  ///
  /// ## Description
  ///
  /// Triggers methods to handle:
  ///
  /// - Form validation
  /// - Firebase Authentication
  ///
  /// ### Functional Flow:
  ///
  /// 1. Show the loading indicator
  /// 2. Start authenticating service
  ///
  /// `Note`: Always wrap an authentication request in a try-catch block
  ///
  Future<void> buttonFun() async {
    // if (_formKey.currentState!.validate()) {
    //   // Start the indicator
    //   setState(() => _isLoading = !_isLoading);
    //
    //   // Authenticate
    //   try {
    //     // Enter your login logic here or call to a login function from a
    //     // service
    //     final result = await AuthController.login(email, password);
    //     // log('${result.uid}', name: 'Login user uid');
    //
    //     // If userId is not empty then set the userId in the provider
    //     if (result.uid.isNotEmpty) {
    //       await AuthController.saveCredentials(result.uid, email);
    //
    //       // Mock show async functionality
    //       await Future.delayed(const Duration(seconds: 1));
    //
    //       // Navigate to tabbar
    //       AuthController.navigateToTabbar();
    //
    //       return;
    //     }
    //
    //     errorText = '';
    //   } on PlatformException catch (e) {
    //     errorText = e.message.toString();
    //     // log(e.message, name: 'Error message: Login page');
    //     // log(e.code, name: 'Error code: Login page');
    //   } catch (e) {
    //     errorText = AppStrings.somethingWentWrong;
    //     // log(e, name: 'Error: Login Page');
    //   }
    //
    //   // Stop the indicator
    //   setState(() => _isLoading = !_isLoading);
    // }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Container(
      padding: ThemeGuide.padding16,
      margin: ThemeGuide.padding20,
      decoration: BoxDecoration(
        color: _theme.accentColor,
        borderRadius: ThemeGuide.borderRadius16,
        boxShadow: Style.renderShadow(
          context: context,
          light: ThemeGuide.primaryShadow,
          dark: ThemeGuide.primaryShadowDark,
        ),
      ),
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: <Widget>[
            FormBuilderTextField(
              name: AppStrings.emailLabel,
              onChanged: (val) => email = val,
              maxLines: 1,
              decoration: const InputDecoration(
                hintText: AppStrings.emailLabel,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.maxLength(context, 50),
                FormBuilderValidators.email(context),
              ]),
            ),
            const SizedBox(height: 10),
            FormBuilderTextField(
              name: AppStrings.passwordLabel,
              obscureText: true,
              maxLines: 1,
              onChanged: (val) => password = val,
              decoration: const InputDecoration(
                hintText: AppStrings.passwordLabel,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.maxLength(context, 40),
                // AuthController.validatePassword,
              ]),
            ),
            Submit(
              onPress: buttonFun,
              isLoading: _isLoading,
              label: AppStrings.login,
            ),
            ShowError(
              text: errorText,
            ),
            const ForgotPassword()
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
  Future<void> _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(),
      child: Text(
        AppStrings.forgotPassword,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
          color: Theme.of(context).primaryColorLight,
        ),
      ),
    );
  }
}
