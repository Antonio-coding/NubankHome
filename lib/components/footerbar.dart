import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          label: 'Conta',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          label: 'Investimentos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Promoções',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, AppRoutes.home);
            break;
          case 1:
            Navigator.pushNamed(context, AppRoutes.account);
            break;
          case 2:
            Navigator.pushNamed(context, AppRoutes.investment);
            break;
          case 3:
            Navigator.pushNamed(context, AppRoutes.promo);
            break;
        }
      },
    );
  }
}
