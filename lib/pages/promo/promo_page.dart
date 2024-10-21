import 'package:flutter/material.dart';
import 'package:nubankhome/components/footerbar.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promoções'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('Página de Promoções'),
      ),
      bottomNavigationBar: FooterBar(),
    );
  }
}
