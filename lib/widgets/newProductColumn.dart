import 'package:audiophile/responsive.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class NewProductColumn extends StatelessWidget {
  const NewProductColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: Responsive.isMobile(context)
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const Text(
          "New Product",
          style: TextStyle(
              color: Pallette.fadedWhite,
              fontSize: 19,
              fontWeight: FontWeight.w400),
        ),
        const Text(
          "XX99 MARK II HEADPHONE",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
        ),
        Text(
          "Experience natural, lifelike audio and exceptional build quality made for the passionate music enthusiast",
          textAlign:
              Responsive.isMobile(context) ? TextAlign.center : TextAlign.start,
          style: TextStyle(
              color: Pallette.fadedWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        MaterialButton(
          onPressed: () {},
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
          color: Pallette.copperRust,
          textColor: Colors.white,
          child: const Text("See Products"),
        )
      ],
    );
  }
}
