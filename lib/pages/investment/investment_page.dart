import 'package:flutter/material.dart';
import 'package:nubankhome/components/footerbar.dart';

class InvestmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investimentos'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text('Página de Investimentos'),
      ),
      bottomNavigationBar: FooterBar(),
    );
  }
}
