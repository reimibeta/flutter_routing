import 'package:flutter/material.dart';
import 'package:flutter_routing/locator.dart';
import 'package:flutter_routing/pages/home/bloc_home.dart';
import 'package:flutter_routing/provider/bloc_provider.dart';
import 'package:flutter_routing/widgets/carousel.dart';
import 'package:flutter_routing/widgets/categories_small_list.dart';
import 'package:flutter_routing/widgets/search_bar.dart';

import '../../route_generator.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocHomePage();
    return BlocProvider(
        bloc: bloc,
        child: Scaffold(
          body: WillPopScope(
            onWillPop: () => LocatorService.tabbarController().handleTabBackEvent(),
            child: ListView(
              physics: const ScrollPhysics(),
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                  ),
                  child: _Heading(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: SearchBar(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 5,
                    right: 5,
                  ),
                  child: CategoriesSmallList(),
                ),
                MyCarousel(),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: FlashSaleSmallList(),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: PopularProducts(),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: WeekPromotionsSmallList(),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: FeaturedProducts(),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(
                //     top: 10,
                //     left: 10,
                //     right: 10,
                //   ),
                //   child: SingleBanner(
                //     imageUrl: SINGLE_BANNER_HOME_1,
                //     onPress: _navigateToFlashSale,
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20),
                //   child: RecommendedProducts(),
                // ),
              ],
            ),
          ),
        )
    );
  }
}

class _Heading extends StatelessWidget {
  const _Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
            text: 'Welcome to\n',
            style: Theme.of(context).textTheme.caption,
            children: [
              TextSpan(
                text: 'PCR Pallet Shop',
                style: Theme.of(context).textTheme.headline6,
              ),
            ]),
      ),
    );
  }
}