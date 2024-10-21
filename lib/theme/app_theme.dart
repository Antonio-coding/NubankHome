// app_theme.dart
import 'package:flutter/material.dart';
import 'package:nubankhome/components/footerbar.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: Colors.purple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.purple,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Color(0xfffef9f9)),
    ),
  );

  static AppBar appBar(String title) {
    return AppBar(
      title: Text(title),
      leading: Icon(Icons.person_outline),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            Drawer(
              child: Column(children: [
                ListTile(
                  title: Text('aqui passa um arry'),
                ),
              ]),
            );
          },
        ),
        Icon(Icons.help_outline),
        Icon(Icons.settings),
      ],
    );
  }
}
