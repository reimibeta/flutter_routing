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

import 'dart:developer';

import 'package:flutter/cupertino.dart';

class TabbarController extends CupertinoTabController {
  /// Jumps the tabbar to home which is at index `0`
  void jumpToHome() {
    index = 0;
  }

  /// Handle the bak event from any tab.
  /// Checks for the tab index and manage the back event accordingly
  Future<bool> handleTabBackEvent() {
    switch (index) {
      case 0:
        log('Tabbar Index is $index', name: 'Tabbar Controller');
        return Future.value(true);
        break;

      case 1:
        log('Tabbar Index is $index', name: 'Tabbar Controller');
        index = 0;
        return Future.value(false);
        break;

      case 2:
        log('Tabbar Index is $index', name: 'Tabbar Controller');
        index = 0;
        return Future.value(false);
        break;

      case 3:
        log('Tabbar Index is $index', name: 'Tabbar Controller');
        index = 0;
        return Future.value(false);
        break;

      default:
        log('Default back event');
        index = 0;
        return Future.value(false);
    }
  }
}
