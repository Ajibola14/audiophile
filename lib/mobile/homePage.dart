import 'package:audiophile/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../color.dart';
import '../widgets/newProductColumn.dart';
import '../widgets/widgets.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Pallette.darkCharcoal,
        leading: SvgPicture.asset(
          "assets/hamburger.svg",
          fit: BoxFit.none,
        ),
        foregroundColor: Colors.white,
        title: const Text("audiophile"),
        centerTitle: true,
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Divider(
              height: 1,
              indent: 10,
              color: Color.fromRGBO(255, 255, 255, 0.2),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 500,
                padding: const EdgeInsets.fromLTRB(38, 100, 38, 0),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Pallette.darkCharcoal,
                    image: DecorationImage(
                        image: AssetImage(("assets/headphone-bg.png")),
                        opacity: 0.7,
                        fit: BoxFit.fill)),
                child: NewProductColumn()),
            SizedBox(height: 200),
            Column(
              children: [
                SectionCard(
                  title: "HEADPHONES",
                  thumbnail: "Group 3",
                ),
                SectionCard(
                  title: "SPEAKERS",
                  thumbnail: "Group 7",
                ),
                SectionCard(
                  title: "EARPHONES",
                  thumbnail: "image 4",
                ),
              ],
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: BoxDecoration(
                  color: Pallette.copperRust,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/image3.png",
                    height: 270,
                    width: 210,
                  ),
                  Text(
                    "ZX9 SPEAKER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 2,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Text(
                    "Upgrade to premium speakers that are phenomenally built to deliver truly remarkable sound.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.8,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Pallette.fadedWhite),
                  ),
                  SizedBox(height: 15),
                  MaterialButton(
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    color: Pallette.black,
                    textColor: Colors.white,
                    child: const Text(
                      "SEE PRODUCTS",
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: Pallette.fadedBlack,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ZX7 SPEAKER",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Pallette.black),
                            ),
                            SizedBox(height: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Pallette.black,
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Pallette.black),
                                  side: BorderSide(
                                      color: Pallette.black, width: 2),
                                  shape: const RoundedRectangleBorder()),
                              child: const Text(
                                "SEE PRODUCT",
                              ),
                            )
                          ]),
                      Image.asset("assets/image 5.png")
                    ])),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Image.asset(
                "assets/image 6.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 15, 20, 40),
                padding: EdgeInsets.only(
                  left: 30,
                  top: 30,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                    color: Pallette.fadedBlack,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "YX1 SPEAKER",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Pallette.black),
                      ),
                      SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            foregroundColor: Pallette.black,
                            textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Pallette.black),
                            side: BorderSide(color: Pallette.black, width: 2),
                            shape: const RoundedRectangleBorder()),
                        child: const Text(
                          "SEE PRODUCT",
                        ),
                      )
                    ])),
            SizedBox(height: 20),
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Image.asset(
                  "assets/image 7.png",
                  fit: BoxFit.fitWidth,
                )),
            SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Pallette.black),
                      children: [
                        TextSpan(
                          text: "BRINGING YOU THE",
                        ),
                        TextSpan(
                            text: " BEST",
                            style: TextStyle(color: Pallette.copperRust)),
                        TextSpan(text: " AUDIO GEAR"),
                      ])),
            ),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Located at the heart of New York City, Audiophile is the premier store for high end headphones, earphones, speakers, and audio accessories. We have a large showroom and luxury demonstration rooms available for you to browse and experience a wide range of our products. Stop by our store to meet some of the fantastic people who make Audiophile the best place to buy your portable audio equipment.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(118, 118, 118, 0.9),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.8),
              ),
            ),
            SizedBox(height: 90),
            Container(
                color: Pallette.black,
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Text(
                      "audiophile",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          height: 2.5),
                    ),
                    SizedBox(height: 40),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "HOME",
                          style: TextStyle(
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              height: 2,
                              color: Colors.white),
                        )),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "HEADPHONES",
                          style: TextStyle(
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              height: 2,
                              color: Colors.white),
                        )),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "SPEAKERS",
                          style: TextStyle(
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              height: 2,
                              color: Colors.white),
                        )),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "EARPHONES",
                          style: TextStyle(
                              letterSpacing: 0.8,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              height: 2,
                              color: Colors.white),
                        )),
                    SizedBox(height: 20),
                    Text(
                      "Audiophile is an all in one stop to fulfill your audio needs. We're a small team of music lovers and sound specialists who are devoted to helping you get the most out of personal audio. Come and visit our demo facility - we’re open 7 days a week.",
                      style: TextStyle(
                          color: Pallette.fadedWhite,
                          height: 1.8,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Copyright 2021. All Rights Reserved",
                      style: TextStyle(
                          color: Pallette.fadedWhite,
                          height: 1.8,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("facebook.svg"),
                        SizedBox(width: 20),
                        SvgPicture.asset("twitter.svg"),
                        SizedBox(width: 20),
                        SvgPicture.asset("instagram.svg"),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
