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

// import 'package:flutter_routing/controllers/navigationController.dart';
import 'package:flutter_routing/enums/enums.dart';
import 'package:flutter_routing/locator.dart';
import 'package:flutter_routing/utils/style.dart';
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesSmallList extends StatelessWidget {
  const CategoriesSmallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          RowItem(
            label: 'Men',
            assetUrl: 'assets/svg/man.svg',
            searchProductFor: SearchProductFor.Men,
          ),
          RowItem(
            label: 'Women',
            assetUrl: 'assets/svg/woman.svg',
            searchProductFor: SearchProductFor.Women,
          ),
          RowItem(
            label: 'Kids',
            assetUrl: 'assets/svg/baby.svg',
            searchProductFor: SearchProductFor.Kids,
          ),
          RowItem(
            label: 'Bags',
            assetUrl: 'assets/svg/handbag.svg',
            searchProductFor: SearchProductFor.Not_Defined,
            productCategoryType: ProductCategoryType.Bags,
          ),
          RowItem(
            label: 'Watch',
            assetUrl: 'assets/svg/watch.svg',
            searchProductFor: SearchProductFor.Not_Defined,
            productCategoryType: ProductCategoryType.Watch,
          ),
          RowItem(
            label: 'Accessories',
            assetUrl: 'assets/svg/sunglasses.svg',
            searchProductFor: SearchProductFor.Not_Defined,
            productCategoryType: ProductCategoryType.Accessories,
          ),
        ],
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({
    Key? key,
    required this.label,
    required this.assetUrl,
    required this.searchProductFor,
    this.productCategoryType,
  }) : super(key: key);

  final String label;
  final String assetUrl;
  final SearchProductFor searchProductFor;

  /// Used to setup the product category from the small list only instead of
  /// the filter modal.
  final ProductCategoryType? productCategoryType;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 8,
        ),
        padding: ThemeGuide.padding10,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: theme.accentColor,
          borderRadius: ThemeGuide.borderRadius,
          boxShadow: Style.renderShadow(
            context: context,
            light: ThemeGuide.primaryShadow,
            dark: ThemeGuide.primaryShadowDark,
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: SvgPicture.asset(
                  assetUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                label,
                style: theme.textTheme.subtitle2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onClick() {
    /// Set the `SearchProductFor` parameter before navigating
    // LocatorService.categoryProductsProvider()
    //     .searchProductFor(searchProductFor);
    //
    // if (productCategoryType != null) {
    //   LocatorService.categoryProductsProvider().setProductCategoryTo =
    //       productCategoryType;
    // }
    // NavigationController.navigator.push(Routes.categorisedProducts);
  }
}
