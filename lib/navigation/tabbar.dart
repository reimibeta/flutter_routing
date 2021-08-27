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

import 'package:flutter_routing/controllers/tabbar_controller.dart';
import 'package:flutter_routing/locator.dart';
import 'package:flutter_routing/pages/home/home_page.dart';
import 'package:flutter_routing/themes/colors.dart';
import 'package:flutter_routing/themes/theme.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TabbarNavigation extends StatelessWidget {
  const TabbarNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return ChangeNotifierProvider<TabbarController>.value(
      value: LocatorService.tabbarController(),
      child: CupertinoTabScaffold(
        controller: LocatorService.tabbarController(),
        tabBar: CupertinoTabBar(
          activeColor: AppColors.mLightBlue,
          // inactiveColor: AppColors.mLightPurple,
          items: [
            BottomNavigationBarItem(
              icon: Selector<TabbarController, int>(
                selector: (context, d) => d.index,
                builder: (context, _currentIndex, _) {
                  return _currentIndex == 0
                      ? const ActiveTab(icon: Icon(EvaIcons.home))
                      : const Icon(EvaIcons.homeOutline);
                },
              ),
            ),
            BottomNavigationBarItem(
              icon: Selector<TabbarController, int>(
                selector: (context, d) => d.index,
                builder: (context, _currentIndex, _) {
                  return _currentIndex == 1
                      ? const ActiveTab(icon: Icon(EvaIcons.heart))
                      : const Icon(EvaIcons.heartOutline);
                },
              ),
            ),
            BottomNavigationBarItem(
              icon: Selector<TabbarController, int>(
                selector: (context, d) => d.index,
                builder: (context, _currentIndex, _) {
                  return _currentIndex == 2
                      ? const ActiveTab(icon: Icon(EvaIcons.shoppingBag))
                      : const Icon(EvaIcons.shoppingBagOutline);
                },
              ),
            ),
            BottomNavigationBarItem(
              icon: Selector<TabbarController, int>(
                selector: (context, d) => d.index,
                builder: (context, _currentIndex, _) {
                  return _currentIndex == 3
                      ? const ActiveTab(icon: Icon(EvaIcons.person))
                      : const Icon(EvaIcons.personOutline);
                },
              ),
            ),
          ],
          backgroundColor: _theme.scaffoldBackgroundColor,
          border: const Border(
            top: BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          onTap: (int index) {
            LocatorService.tabbarController().index = index;
          },
        ),
        tabBuilder: (context, i) {
          switch (i) {
            case 0:
              return HomePage();
              break;

            case 1:
              return HomePage();
              break;

            case 2:
              return HomePage();
              break;

            case 3:
              return HomePage();
              break;

            default:
              return HomePage();
              break;
          }
        },
      ),
    );
  }
}

class ActiveTab extends StatelessWidget {
  const ActiveTab({Key? key, this.icon}) : super(key: key);
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 800),
      curve: Curves.elasticOut,
      builder: (context, value, widget) {
        return Transform.scale(
          scale: value as double,
          child: widget,
        );
      },
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return AppGradients.tabbarIconGradient.createShader(bounds);
        },
        child: icon,
      ),
    );
  }
}
