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
// import 'package:provider/provider.dart';
//
// class PopularProducts extends StatelessWidget {
//   const PopularProducts({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // print('printing from Popular products sectionProducts');
//     return Selector<ProductsProvider, List<String>>(
//       selector: (context, d) => d.popularProducts,
//       builder: (context, data, _) {
//         if (data.isNotEmpty) {
//           return SectionGenerator(
//             data: data,
//             title: AppStrings.popular,
//             showMore: () {
//               LocatorService.productsProvider()
//                   .setAllProductsDataType(ProductsDataType.POPULAR);
//               NavigationController.navigator.push(Routes.allProducts);
//             },
//           );
//         } else {
//           // Get the data
//           LocatorService.productsProvider().fetchData(ProductsDataType.POPULAR);
//           return const SizedBox(
//             height: 200,
//             child: CustomLoader(),
//           );
//         }
//       },
//     );
//   }
// }
//
// class FeaturedProducts extends StatelessWidget {
//   const FeaturedProducts({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // print('printing from Popular products sectionProducts');
//     return Selector<ProductsProvider, List<String>>(
//       selector: (context, d) => d.featuredProducts,
//       builder: (context, data, _) {
//         if (data.isNotEmpty) {
//           return SectionGenerator(
//             data: data,
//             title: AppStrings.featured,
//             showMore: () {
//               LocatorService.productsProvider()
//                   .setAllProductsDataType(ProductsDataType.FEATURED);
//               NavigationController.navigator.push(Routes.allProducts);
//             },
//           );
//         } else {
//           // Get the data
//           LocatorService.productsProvider()
//               .fetchData(ProductsDataType.FEATURED);
//           return const SizedBox(
//             height: 200,
//             child: CustomLoader(),
//           );
//         }
//       },
//     );
//   }
// }
//
// class RecommendedProducts extends StatelessWidget {
//   const RecommendedProducts({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // print('printing from Popular products sectionProducts');
//     return Selector<ProductsProvider, List<String>>(
//       selector: (context, d) => d.recommendedProducts,
//       builder: (context, data, _) {
//         if (data.isNotEmpty) {
//           return SectionGenerator(
//             data: data,
//             title: AppStrings.recommended,
//             showMore: () {
//               LocatorService.productsProvider()
//                   .setAllProductsDataType(ProductsDataType.RECOMMENDED);
//               NavigationController.navigator.push(Routes.allProducts);
//             },
//           );
//         } else {
//           // Get the data
//           LocatorService.productsProvider()
//               .fetchData(ProductsDataType.RECOMMENDED);
//           return const SizedBox(
//             height: 200,
//             child: CustomLoader(),
//           );
//         }
//       },
//     );
//   }
// }
//
// class RelatedProducts extends StatelessWidget {
//   const RelatedProducts({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // print('printing from Popular products sectionProducts');
//     return Selector<ProductsProvider, List<String>>(
//       selector: (context, d) => d.relatedProducts,
//       builder: (context, data, _) {
//         if (data.isNotEmpty) {
//           return SectionGenerator(
//             data: data,
//             title: AppStrings.related,
//             showMore: () {},
//             showMoreButtonVisible: false,
//           );
//         } else {
//           // Get the data
//           LocatorService.productsProvider().fetchData(ProductsDataType.RELATED);
//           return const SizedBox(
//             height: 200,
//             child: CustomLoader(),
//           );
//         }
//       },
//     );
//   }
// }
