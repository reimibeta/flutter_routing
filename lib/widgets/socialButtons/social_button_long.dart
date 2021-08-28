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
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter_routing/utils/style.dart';
import 'package:flutter_routing/widgets/socialButtons/social_buttons.dart';

class SocialButtonLong extends StatelessWidget {
  const SocialButtonLong({
    this.buttonType,
    required this.label,
  });

  const SocialButtonLong.google({
    this.buttonType = SocialButtonType.GOOGLE,
    required this.label,
  });

  const SocialButtonLong.facebook({
    this.buttonType = SocialButtonType.FACEBOOK,
    required this.label,
  });

  final SocialButtonType? buttonType;
  final String label;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    Widget _renderButton = const SizedBox();

    switch (buttonType) {
      case SocialButtonType.GOOGLE:
        _renderButton = SocialButtons.googleButton(height: 35);
        break;

      case SocialButtonType.FACEBOOK:
        _renderButton = SocialButtons.facebookButton(height: 35);
        break;

      default:
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: _theme.accentColor,
        borderRadius: ThemeGuide.borderRadius16,
        boxShadow: Style.renderShadow(
          context: context,
          light: ThemeGuide.primaryShadow,
          dark: ThemeGuide.primaryShadowDark,
        ),
      ),
      child: Row(
        children: <Widget>[
          _renderButton,
          Expanded(
            child: Text(
              label,
              style: _theme.textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
