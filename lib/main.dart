// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audiophile/desktop/homePage.dart';
import 'package:audiophile/mobile/homePage.dart';
import 'package:flutter/material.dart';


import 'responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'audiophile',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Responsive(
          mobile: HomePageMobile(),
          desktop: HomePageDesktop(),
        ));
  }
}

