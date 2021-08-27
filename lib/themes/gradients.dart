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

import 'package:flutter_routing/themes/theme.dart';
import 'package:flutter/material.dart';

abstract class AppGradients {
  /// The main `LinearGradient` with blue and green color.
  static const LinearGradient mainGradient = LinearGradient(
    colors: [AppColors.mBlue, AppColors.mLightGreen],
    begin: Alignment.bottomLeft,
    end: Alignment(0.8, 0.0),
  );

  /// The `LinearGradient` for tabbar icons. The colors used are
  /// app colors light blue and white
  static const LinearGradient tabbarIconGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.5, 0],
    colors: <Color>[
      AppColors.mLightBlue,
      AppColors.mWhite,
    ],
    tileMode: TileMode.mirror,
  );

  /// `LinearGradient` for flash sale.
  static const LinearGradient flashSaleGradient = LinearGradient(
    colors: [AppColors.mLightPink, AppColors.mLightPurple],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.3, 0.6],
  );
}
