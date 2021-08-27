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
// import 'dart:developer';
//
// import 'package:ecommerce_store/data/data.dart';
// import 'package:ecommerce_store/providers/flashSaleProvider.dart';
// import 'package:ecommerce_store/providers/paymentProvider.dart';
// import 'package:ecommerce_store/providers/themeProvider.dart';
// import 'package:ecommerce_store/providers/weekPromotionsProvider.dart';
// import 'package:flutter/material.dart';
// import 'package:ecommerce_store/controllers/tabbarController.dart';
// import 'package:ecommerce_store/providers/cartProvider.dart';
// import 'package:ecommerce_store/providers/categoryProductsProvider.dart';
// import 'package:ecommerce_store/providers/checkoutProvider.dart';
// import 'package:ecommerce_store/providers/notificationsProvider.dart';
// import 'package:ecommerce_store/providers/ordersProvider.dart';
// import 'package:ecommerce_store/providers/productsProvider.dart';
// import 'package:ecommerce_store/providers/searchProvider.dart';
// import 'package:ecommerce_store/providers/userProvider.dart';
// import 'package:ecommerce_store/services/authentication/authentication.dart';
// import 'package:ecommerce_store/services/authentication/firebaseAuthService.dart';
// import 'package:get_it/get_it.dart';
//
// final GetIt locator = GetIt.instance;
//
// void setupLocator() {
//   locator.registerLazySingleton<AuthService>(() => FirebaseAuthService());
//   locator.registerLazySingleton<TabbarController>(() => TabbarController());
//   locator.registerLazySingleton<UserProvider>(() => UserProvider());
//   locator.registerLazySingleton<CartProvider>(() => CartProvider());
//   locator.registerLazySingleton<ProductsProvider>(() => ProductsProvider());
//   locator.registerLazySingleton<OrdersProvider>(() => OrdersProvider());
//   locator.registerLazySingleton<NotificationsProvider>(
//           () => NotificationsProvider());
//   locator.registerLazySingleton<CheckoutProvider>(() => CheckoutProvider());
//   locator.registerLazySingleton<CategoryProductsProvider>(
//           () => CategoryProductsProvider());
//   locator.registerLazySingleton<SearchProvider>(() => SearchProvider());
//   locator.registerLazySingleton<ThemeProvider>(() => ThemeProvider());
//   locator.registerLazySingleton<WeekPromotionsProvider>(
//           () => WeekPromotionsProvider());
//   locator.registerLazySingleton<FlashSaleProvider>(() => FlashSaleProvider());
//
//   // Factory providers
//   locator.registerFactoryParam<PaymentProvider, String, PaymentType>(
//         (String amount, PaymentType paymentType) => PaymentProvider(
//       amount: amount,
//       paymentType: paymentType,
//     ),
//   );
//
//   // Data layer
//   locator.registerLazySingleton<ProductsRepository>(() => ProductsRepository());
// }
//
// abstract class LocatorService {
//   static AuthService authService() => locator<AuthService>();
//   static TabbarController tabbarController() => locator<TabbarController>();
//   static CartProvider cartProvider() => locator<CartProvider>();
//   static UserProvider userProvider() => locator<UserProvider>();
//   static ProductsProvider productsProvider() => locator<ProductsProvider>();
//   static OrdersProvider ordersProvider() => locator<OrdersProvider>();
//   static NotificationsProvider notificationsProvider() =>
//       locator<NotificationsProvider>();
//   static CheckoutProvider checkoutProvider() => locator<CheckoutProvider>();
//   static CategoryProductsProvider categoryProductsProvider() =>
//       locator<CategoryProductsProvider>();
//   static SearchProvider searchProvider() => locator<SearchProvider>();
//   static ThemeProvider themeProvider() => locator<ThemeProvider>();
//   static WeekPromotionsProvider weekPromotionsProvider() =>
//       locator<WeekPromotionsProvider>();
//   static FlashSaleProvider flashSaleProvider() => locator<FlashSaleProvider>();
//
//   // Factory Providers
//   static PaymentProvider paymentProvider({
//     @required String amount,
//     @required PaymentType paymentType,
//   }) =>
//       locator<PaymentProvider>(
//         param1: amount,
//         param2: paymentType,
//       );
//
//   // Data layer
//   static ProductsRepository productsRepository() =>
//       locator<ProductsRepository>();
// }
//
// ///
// /// `Description`
// ///
// /// Holds the context from the tree to show the in-app
// /// notifications, alerts, status bars, toast, etc.
// ///
// /// This is a hack to access the context of the widget in conjunction with
// /// static methods to show contextual alerts, notification, etc.
// /// Always reset the context on this class before use.
// ///
// abstract class Application {
//   static BuildContext _context;
//   static BuildContext get context => _context;
//   static void setContext(BuildContext context) {
//     log('Setting Application context xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
//         name: 'Locator');
//     print(context);
//     _context = context;
//   }
// }
