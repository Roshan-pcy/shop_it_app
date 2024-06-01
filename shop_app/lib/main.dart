import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/model/card.dart';
import 'package:shop_app/pages/HomePage.dart';
import 'package:shop_app/pages/Intro_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => card(),
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const IntroPage()),
    );
  }
}
