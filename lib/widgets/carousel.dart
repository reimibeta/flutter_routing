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

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:ecommerce_store/controllers/navigationController.dart';
import 'package:flutter_routing/developer/mock/data/mockData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/widgets/promotions/banner/single_banner.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: CAROUSEL_DATA.map((i) {
        return SingleBanner(
          imageUrl: i,
          // onPress: () => NavigationController.navigator.push(Routes.flashSale),
          onPress: () => null,
        );
      }).toList(),
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
