import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/animations/animated_button.dart';
import 'package:flutter_routing/constants/app_strings.dart';
import 'package:flutter_routing/themes/colors.dart';
import 'package:flutter_routing/themes/themeGuide.dart';
import 'package:flutter_routing/utils/style.dart';

import 'custom_loader.dart';

class FlashSaleSmallList extends StatelessWidget {
  const FlashSaleSmallList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
      margin: ThemeGuide.padding,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: ThemeGuide.borderRadius16,
        boxShadow: Style.renderShadow(
          context: context,
          light: ThemeGuide.primaryShadow,
          dark: ThemeGuide.primaryShadowDark,
        ),
      ),
      child: Column(
        children: const <Widget>[
          Text(
            AppStrings.flashSaleLabel,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          // _ListContainer(),
          SizedBox(height: 16),
          _SeeAllButton(),
        ],
      ),
    );
  }
}

class _SeeAllButton extends StatelessWidget {
  const _SeeAllButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimButton(
      onTap: _seeAll,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: ThemeGuide.padding10,
        decoration: const BoxDecoration(
          borderRadius: ThemeGuide.borderRadius,
        ),
        child: const Center(
          child: Text(
            AppStrings.seeAll,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  static void _seeAll() {
    // NavigationController.navigator.push(Routes.flashSale);
  }
}
//
//
class _ListContainer extends StatelessWidget {
  const _ListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: const Center(child: CustomLoader()),
    );
    // return SizedBox(
    //   height: MediaQuery.of(context).size.height / 3,
    //   width: MediaQuery.of(context).size.width,
    //   child: ChangeNotifierProvider<FlashSaleProvider>.value(
    //     value: LocatorService.flashSaleProvider(),
    //     child: Consumer<FlashSaleProvider>(
    //       builder: (context, p, child) {
    //         if (p.isLoading) {
    //           return const Center(child: CustomLoader());
    //         }
    //
    //         if (p.isError) {
    //           return ErrorReload(
    //             errorMessage: p.errorMessage,
    //             reloadFunction: () {
    //               // SchedulerBinding.instance.addPostFrameCallback((_) {
    //               //   p.fetchPromotionList();
    //               // });
    //             },
    //           );
    //         }
    //
    //         if (p.isSuccess) {
    //           return ListView.builder(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: p.flashSalePromotionList.length,
    //             itemBuilder: (context, index) {
    //               return _ListItem(
    //                 uid: p.flashSalePromotionList[index].uid,
    //                 imageUrl: p.flashSalePromotionList[index].imageUrl,
    //               );
    //             },
    //           );
    //         }
    //
    //         if (p.isInitial) {
    //           // SchedulerBinding.instance.addPostFrameCallback((_) {
    //           //   p.fetchPromotionList();
    //           // });
    //         }
    //
    //         return const Center(child: CustomLoader());
    //       },
    //     ),
    //   ),
    // );
  }
}

class _ListItem extends StatelessWidget {
  const _ListItem({
    Key? key,
    required this.uid,
    required this.imageUrl,
  }) : super(key: key);
  final String uid, imageUrl;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _navigateToFlashSale,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: ThemeGuide.borderRadius,
              image: DecorationImage(
                image: CachedNetworkImageProvider(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void _navigateToFlashSale() {
    // NavigationController.navigator.push(Routes.flashSale);
  }
}
