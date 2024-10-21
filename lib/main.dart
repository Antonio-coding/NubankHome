import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'pages/home/home_page.dart';
import 'pages/account/account_page.dart';
import 'pages/investment/investment_page.dart';
import 'pages/promo/promo_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(NubankApp());
}

class NubankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      theme: AppTheme.themeData,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => HomePage(),
        AppRoutes.account: (context) => AccountPage(),
        AppRoutes.investment: (context) => InvestmentPage(),
        AppRoutes.promo: (context) => PromoPage(),
      },
    );
  }
}
