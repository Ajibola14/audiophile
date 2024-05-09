import 'package:audiophile/widgets/newProductColumn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../color.dart';
import '../widgets/widgets.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Pallette.copperRust,
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
                padding: const EdgeInsets.fromLTRB(50, 50, 50, 30),
                decoration: const BoxDecoration(
                  color: Pallette.darkCharcoal,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Expanded(flex: 3, child: const NewProductColumn()),
                      const Spacer(flex: 1),
                      Expanded(
                        flex: 3,
                        child: Image.asset("assets/headphone-bg.png"),
                      )
                    ])),
            const SizedBox(height: 200),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              decoration: BoxDecoration(
                  color: Pallette.copperRust,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset("assets/image3.png",
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width * 0.3),
                  const Spacer(
                    flex: 1,
                  ),
                  Flexible(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "ZX9 SPEAKER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 2,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        const Text(
                          "Upgrade to premium speakers that are phenomenally built to deliver truly remarkable sound.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              height: 1.8,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Pallette.fadedWhite),
                        ),
                        const SizedBox(height: 15),
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
                ],
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                padding: const EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: Pallette.fadedBlack,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "ZX7 SPEAKER",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Pallette.black),
                              ),
                              const SizedBox(height: 10),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    foregroundColor: Pallette.black,
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Pallette.black),
                                    side: const BorderSide(
                                        color: Pallette.black, width: 2),
                                    shape: const RoundedRectangleBorder()),
                                child: const Text(
                                  "SEE PRODUCT",
                                ),
                              )
                            ]),
                      ),
                      const Spacer(),
                      Flexible(
                          flex: 4,
                          child: Image.asset(
                            "assets/image 5.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ))
                    ])),
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                      ),
                      width: (MediaQuery.of(context).size.width - 100) * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        "assets/image 6.png",
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Container(
                      width: (MediaQuery.of(context).size.width - 100) * 0.45,
                      margin: const EdgeInsets.only(right: 50),
                      padding: const EdgeInsets.only(
                        left: 50,
                        top: 30,
                        bottom: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Pallette.fadedBlack,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "YX1 SPEAKER",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Pallette.black),
                            ),
                            const SizedBox(height: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: Pallette.black,
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Pallette.black),
                                  side: const BorderSide(
                                      color: Pallette.black, width: 2),
                                  shape: const RoundedRectangleBorder()),
                              child: const Text(
                                "SEE PRODUCT",
                              ),
                            )
                          ])),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: [
                        RichText(
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
                        Text(
                          "Located at the heart of New York City, Audiophile is the premier store for high end headphones, earphones, speakers, and audio accessories. We have a large showroom and luxury demonstration rooms available for you to browse and experience a wide range of our products. Stop by our store to meet some of the fantastic people who make Audiophile the best place to buy your portable audio equipment.",
                          style: TextStyle(
                              color: Color.fromRGBO(118, 118, 118, 0.9),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      "assets/image 7.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            const SizedBox(height: 90),
            Container(
                color: Pallette.black,
                width: double.infinity,
                padding: const EdgeInsets.only(
                    top: 60, left: 50, right: 50, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "audiophile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              height: 2.5),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "HOME",
                              style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  height: 2,
                                  color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "HEADPHONES",
                              style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  height: 2,
                                  color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "SPEAKERS",
                              style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  height: 2,
                                  color: Colors.white),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "EARPHONES",
                              style: TextStyle(
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  height: 2,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Flexible(
                          child: const Text(
                            "Audiophile is an all in one stop to fulfill your audio needs. We're a small team of music lovers and sound specialists who are devoted to helping you get the most out of personal audio. Come and visit our demo facility - we’re open 7 days a week.",
                            style: TextStyle(
                                color: Pallette.fadedWhite,
                                height: 1.8,
                                fontSize: 18),
                          ),
                        ),
                        Spacer(flex: 1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("facebook.svg"),
                            const SizedBox(width: 20),
                            SvgPicture.asset("twitter.svg"),
                            const SizedBox(width: 20),
                            SvgPicture.asset("instagram.svg"),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Copyright 2021. All Rights Reserved",
                      style: TextStyle(
                          color: Pallette.fadedWhite,
                          height: 1.8,
                          fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
