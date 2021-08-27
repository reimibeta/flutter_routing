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
// import 'package:flutter/material.dart';
// import 'package:flutter_routing/constants/app_strings.dart';
// import 'package:flutter_routing/themes/themeGuide.dart';
// import 'package:provider/provider.dart';
//
// class FlashSale extends StatelessWidget {
//   const FlashSale({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(AppStrings.flashSaleLabel),
//       ),
//       body: const _ListContainer(),
//     );
//   }
// }
//
// class _ListContainer extends StatelessWidget {
//   const _ListContainer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<FlashSaleProvider>.value(
//       value: LocatorService.flashSaleProvider(),
//       child: ViewStateController<FlashSaleProvider>(
//         fetchData: () => LocatorService.flashSaleProvider().fetchProductsList(),
//         child: Selector<FlashSaleProvider, List<String>>(
//           selector: (context, d) => d.flashSaleProductsList,
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
