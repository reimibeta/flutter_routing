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

// import 'package:flutter_routing/locator.dart';
import 'package:flutter_routing/utils/style.dart';
import 'package:flutter_routing/constants/app_strings.dart';
// import 'package:flutter_routing/controllers/navigationController.dart';
// import 'package:flutter_routing/controllers/uiController.dart';
import 'package:flutter_routing/animations/animated_button.dart';
import 'package:flutter_routing/themes/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    // Application.setContext(context);
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: _theme.accentColor,
              boxShadow: Style.renderShadow(
                context: context,
                light: ThemeGuide.textFieldShadow,
                dark: ThemeGuide.textFieldShadowDark,
              ),
              borderRadius: ThemeGuide.borderRadius10,
            ),
            child: const TextField(
              decoration: InputDecoration(
                filled: false,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                alignLabelWithHint: true,
                hintText: AppStrings.search,
                prefixIcon: Icon(EvaIcons.search),
              ),
              onChanged: _onTextChanged,
              maxLines: 1,
            ),
          ),
        ),
        AnimButton(
          onTap: _navigateToSearchScreen,
          child: Container(
            decoration: BoxDecoration(
              color: _theme.accentColor,
              boxShadow: Style.renderShadow(
                context: context,
                light: ThemeGuide.primaryShadow,
                dark: ThemeGuide.primaryShadowDark,
              ),
              borderRadius: ThemeGuide.borderRadius10,
            ),
            padding: ThemeGuide.padding16,
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              AppStrings.go,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static void _navigateToSearchScreen() {
    // FocusScope.of(Application.context).unfocus();
    // if (LocatorService.searchProvider().searchTerm.isNotEmpty) {
    //   // Navigate to search screen
    //   NavigationController.navigator.push(Routes.searchScreen);
    // } else {
    //   UiController.showNotification(
    //     title: AppStrings.oops,
    //     message: AppStrings.nothingToSearch,
    //   );
    // }
  }

  static void _onTextChanged(String value) {
    // LocatorService.searchProvider().setSearchTerm = value;
  }
}
