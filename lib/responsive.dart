// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget mobile;
  const Responsive({
    Key? key,
    required this.desktop,
    this.tablet,
    required this.mobile,
  }) : super(key: key);
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1200;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return desktop;
      } else if (constraints.maxWidth >= 800) {
        return tablet ?? desktop;
      } else {
        return mobile;
      }
      
    });
  }
}