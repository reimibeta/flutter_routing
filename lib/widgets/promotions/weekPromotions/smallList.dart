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
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_routing/animations/animated_button.dart';
// import 'package:flutter_routing/constants/app_strings.dart';
// import 'package:flutter_routing/themes/themeGuide.dart';
// import 'package:provider/provider.dart';
//
// class WeekPromotionsSmallList extends StatelessWidget {
//   const WeekPromotionsSmallList({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: ThemeGuide.padding16,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const <Widget>[
//           _Heading(),
//           SizedBox(height: 10),
//           _ListContainer(),
//         ],
//       ),
//     );
//   }
// }
//
// class _Heading extends StatelessWidget {
//   const _Heading({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: const <Widget>[
//         Text(
//           AppStrings.weekPromotionsLabel,
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         Spacer(),
//         AnimButton(
//           onTap: _seeAll,
//           child: Text(AppStrings.seeAll),
//         ),
//       ],
//     );
//   }
//
//   static void _seeAll() {
//     // NavigationController.navigator.push(Routes.weekPromotions);
//     print("sell all");
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
//     return SizedBox(
//       height: MediaQuery.of(context).size.height / 3,
//       width: MediaQuery.of(context).size.width,
//       child: ChangeNotifierProvider<WeekPromotionsProvider>.value(
//         value: LocatorService.weekPromotionsProvider(),
//         child: Consumer<WeekPromotionsProvider>(
//           builder: (context, p, child) {
//             if (p.isLoading) {
//               return const Center(child: CustomLoader());
//             }
//
//             if (p.isError) {
//               return ErrorReload(
//                 errorMessage: p.errorMessage,
//                 reloadFunction: () {
//                   SchedulerBinding.instance.addPostFrameCallback((_) {
//                     p.fetchPromotionList();
//                   });
//                 },
//               );
//             }
//
//             if (p.isSuccess) {
//               return ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: p.weekPromotionsList.length,
//                 itemBuilder: (context, index) {
//                   return _ListItem(
//                     uid: p.weekPromotionsList[index].uid,
//                     imageUrl: p.weekPromotionsList[index].imageUrl,
//                   );
//                 },
//               );
//             }
//
//             if (p.isInitial) {
//               SchedulerBinding.instance.addPostFrameCallback((_) {
//                 p.fetchPromotionList();
//               });
//             }
//
//             return const Center(child: CustomLoader());
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class _ListItem extends StatelessWidget {
//   const _ListItem({
//     Key key,
//     @required this.uid,
//     @required this.imageUrl,
//   }) : super(key: key);
//   final String uid, imageUrl;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _navigateToWeekPromotion,
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: AspectRatio(
//           aspectRatio: 1 / 1,
//           child: Container(
//             decoration: BoxDecoration(
//               color: AppColors.lightGrey,
//               borderRadius: ThemeGuide.borderRadius,
//               image: DecorationImage(
//                 image: CachedNetworkImageProvider(imageUrl),
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   static void _navigateToWeekPromotion() {
//     NavigationController.navigator.push(Routes.weekPromotions);
//   }
// }
