// // Copyright (c) 2020 Aniket Malik [aniketmalikwork@gmail.com]
// // All Rights Reserved.
// //
// // NOTICE: All information contained herein is, and remains the
// // property of Aniket Malik. The intellectual and technical concepts
// // contained herein are proprietary to Aniket Malik and are protected
// // by trade secret or copyright law.
// //
// // Dissemination of this information or reproduction of this material
// // is strictly forbidden unless prior written permission is obtained from
// // Aniket Malik.
//
// import 'package:ecommerce_store/constants/appStrings.dart';
// import 'package:ecommerce_store/locator.dart';
// import 'package:ecommerce_store/providers/utils/viewStateController.dart';
// import 'package:ecommerce_store/providers/weekPromotionsProvider.dart';
// import 'package:ecommerce_store/shared/itemCard.dart';
// import 'package:ecommerce_store/themes/theme.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class WeekPromotions extends StatelessWidget {
//   const WeekPromotions({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(AppStrings.weekPromotionsLabel),
//       ),
//       body: const _ListContainer(),
//     );
//   }
// }
//
// class _ListContainer extends StatelessWidget {
//   const _ListContainer({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<WeekPromotionsProvider>.value(
//       value: LocatorService.weekPromotionsProvider(),
//       child: ViewStateController<WeekPromotionsProvider>(
//         fetchData: () =>
//             LocatorService.weekPromotionsProvider().fetchProductsData(),
//         child: Selector<WeekPromotionsProvider, List<String>>(
//           selector: (context, d) => d.weekPromotionsProductsList,
//           builder: (context, list, _) {
//             if (list.isNotEmpty) {
//               return GridView.builder(
//                 padding: ThemeGuide.listPadding,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 5,
//                   mainAxisSpacing: 5,
//                   childAspectRatio: 1.2 / 2,
//                 ),
//                 itemCount: list.length,
//                 itemBuilder: (context, int i) {
//                   return ItemCardDiscount(productId: list[i]);
//                 },
//               );
//             } else {
//               return const Center(child: Text(AppStrings.somethingWentWrong));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
