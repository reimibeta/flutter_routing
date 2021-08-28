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
import 'package:flutter_routing/widgets/socialButtons/social_button_long.dart';

class SocialButtonsContainer extends StatelessWidget {
  const SocialButtonsContainer({
    Key? key,
    this.googleOnPress,
    this.facebookOnPress,
    this.googleLable = '',
    this.facebookLable = '',
  }) : super(key: key);

  final Function? googleOnPress, facebookOnPress;
  final String googleLable, facebookLable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if(googleOnPress != null)
                googleOnPress!();
            },
            child: SocialButtonLong.google(
              label: googleLable,
            ),
          ),
          GestureDetector(
            onTap: (){
              if(facebookOnPress != null)
                facebookOnPress!();
            },
            child: SocialButtonLong.facebook(
              label: facebookLable,
            ),
          ),
        ],
      ),
    );
  }
}
