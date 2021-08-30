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
import 'package:flutter_routing/themes/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool isDarkMode =
        Theme.of(context).brightness == ThemeData.dark().brightness;
    if (isDarkMode) {
      return const Center(
        child: SpinKitWave(
          color: AppColors.mWhite,
          type: SpinKitWaveType.center,
          size: 30,
        ),
      );
    } else {
      return const Center(
        child: SpinKitWave(
          color: Colors.black87,
          type: SpinKitWaveType.center,
          size: 30,
        ),
      );
    }
  }
}
