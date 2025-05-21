import 'package:flutter/material.dart';
import 'package:mdf/pages/home.dart';
import 'package:mdf/utils/mytheme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Mythemes.lightTheme,
      darkTheme: Mythemes.darkTheme,

    );
  }
}
