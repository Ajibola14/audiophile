import 'package:flutter/material.dart';

import '../color.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.title,
    required this.thumbnail,
  });
  final String title;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.27,
      margin: EdgeInsets.only(bottom: 150),
      decoration: BoxDecoration(
          color: Pallette.fadedBlack, borderRadius: BorderRadius.circular(5)),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -90,
              child: Image.asset(
                "assets/$thumbnail.png",
                scale: 1.5,
              )),
          Positioned(
              bottom: 50,
              child: Text(
                title,
                style: TextStyle(
                    height: 1.5,
                    letterSpacing: 1.28,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              )),
          Positioned(
            bottom: 15,
            child: TextButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: WidgetStateColor.resolveWith(
                  (states) => Pallette.copperRust.withOpacity(0.2),
                ),
              ),
              label: Text(
                "Shop",
                style: TextStyle(
                    color: Pallette.midnightShadow,
                    fontSize: 19,
                    fontWeight: FontWeight.w600),
              ),
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19,
                color: Pallette.copperRust,
              ),
              iconAlignment: IconAlignment.end,
            ),
          )
        ],
      ),
    );
  }
}
