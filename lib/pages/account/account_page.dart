import 'package:flutter/material.dart';
import 'package:nubankhome/components/build_action_icon.dart';
import 'package:nubankhome/routes/app_routes.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.home);
            },
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () {}),
            IconButton(icon: const Icon(Icons.help_outline), onPressed: () {}),
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saldo Disponível',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'R\$1000,00',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              ListTile(
                  leading: Icon(Icons.wallet),
                  title: Text('Saldo Separado'),
                  subtitle: Text('R\$1000,00'),
                  trailing: Icon(Icons.arrow_forward_ios)),
              ListTile(
                  leading: Icon(Icons.monitor_heart_outlined),
                  title: Text('Gastos Previstos'),
                  subtitle: Text('R\$1000,00'),
                  trailing: Icon(Icons.arrow_forward_ios)),
              ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text('Meus Investimentos'),
                  subtitle: Text('R\$1000,00'),
                  trailing: Icon(Icons.arrow_forward_ios)),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BuildActionIcon(
                        icon: Icons.move_down_outlined, label: 'Depositar'),
                    BuildActionIcon(
                        icon: Icons.payment_outlined, label: 'Pagar'),
                    BuildActionIcon(
                        icon: Icons.replay_outlined,
                        label: 'Débito Automático'),
                    BuildActionIcon(icon: Icons.handshake, label: 'Empréstimo'),
                    BuildActionIcon(
                        icon: Icons.compare_arrows, label: 'Transferir'),
                    BuildActionIcon(
                        icon: Icons.signal_cellular_alt, label: 'Investir'),
                  ],
                ),
              ),
              ListTile(
                title: Text("hisotrico de transaçoes"),
                subtitle: Text("data"),
              )
            ],
          ),
        ));
  }
}
