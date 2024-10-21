import 'package:flutter/material.dart';
import 'package:nubankhome/components/build_action_icon.dart';
import 'package:nubankhome/components/money_visibility_toggle.dart';
import 'package:nubankhome/routes/app_routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isMoneyVisible = false; // Manage visibility state

  // Toggle visibility function
  void _toggleVisibility() {
    setState(() {
      _isMoneyVisible = !_isMoneyVisible; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.account);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(_isMoneyVisible
                ? Icons.visibility
                : Icons.visibility_off), // Icon change
            onPressed: _toggleVisibility, // Toggle visibility
          ),
          IconButton(icon: const Icon(Icons.help_outline), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Conta
            const Text(
              'Conta',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MoneyVisibilityToggle(
                  amount: 1234.56, // The amount to display
                  isVisible: _isMoneyVisible, // Pass visibility state
                  toggleVisibility: _toggleVisibility, // Pass toggle function
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
            const SizedBox(height: 16),
            // Botões Área Pix, Pagamentos, QRCode, Transferir
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const BuildActionIcon(icon: Icons.qr_code, label: 'Área Pix'),
                const BuildActionIcon(icon: Icons.payment, label: 'Pagamentos'),
                const BuildActionIcon(icon: Icons.qr_code_2, label: 'QRCode'),
                const BuildActionIcon(
                    icon: Icons.attach_money, label: 'Transferir'),
              ],
            ),
            const SizedBox(height: 16),
            // Meus Cartões
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meus Cartões',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.credit_card),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Caixa de sugestão de "Guardar dinheiro"
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'Guarde seu dinheiro em caixinhas',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Acessando a área de planejamento',
                        style: TextStyle(
                          color: Color(0xff1d0d20),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Cartão de Crédito
            const ListTile(
              title: Text(
                'Cartão de Crédito',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fatura Fechada', // Este texto permanece normal
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'R\$2.123,39', // Este texto está em negrito
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Vencimento dia 15', // Este texto permanece normal
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              isThreeLine: true,
            ),

            const SizedBox(height: 16),
            // Botão de Renegociação
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Renegociar',
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 16),
            // Empréstimo
            const ListTile(
              title: Text(
                'Empréstimo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Tudo certo! Você está em dia',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 10),
            // Cartão com Imagem de Seguro de Vida
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  // Imagem
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/seguroVida.png', // Certifique-se de que o caminho da imagem está correto
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seguro de Vida',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Cuide bem de quem você ama de um jeito simples',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 16),
                        // Botão "Conhecer"
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple, // Cor do botão
                              shape: StadiumBorder(),
                            ),
                            child: Text(
                              'Conhecer',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
