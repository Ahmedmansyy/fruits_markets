import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruits_markets/core/cotroool/sizeconfig.dart';
import 'package:fruits_markets/core/widgets/custemDotsIndecator.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../core/widgets/coustem_Bottom.dart';
import '../../../Loging/UILayer/LoginView.dart';
import 'custemView.dart';

class onBoardingBody extends StatefulWidget {
  const onBoardingBody({super.key});

  @override
  State<onBoardingBody> createState() => _onBoardingBodyState();
}

class _onBoardingBodyState extends State<onBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Spacer(),
        custem_view(pageController: pageController),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: const Positioned(
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff898989),
                ),
                softWrap: false,
              ),
              right: 32,
              top: 80),
        ),
        Positioned(
          bottom: 190,
          left: 0,
          right: 0,
          child: custem_Indecator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xff69a03a)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
            ),
            onPressed: () {
              Get.to(
                () => Login_View(),
                transition: Transition.rightToLeft,
                duration: Duration(milliseconds: 500),
              );
            },
            child: Text(
              "Next",
              style: TextStyle(fontSize: 30),
            ),
          ),
          // child: CustomBottom(
          //   ontap: () {
          //     if (pageController!.page! < 2) {
          //       pageController!.nextPage(
          //         duration: Duration(milliseconds: 500),
          //         curve: Curves.easeIn,
          //       );
          //     } else {
          //       Get.to(() => Login_View(), transition: Transition.rightToLeft ,duration: Duration(milliseconds: 500),);
          //     }
          //   },
          //   title: pageController!.hasClients
          //       ? (pageController?.page == 2 ? "Get Started" : "Next")
          //       : "Next",
          // ),
          bottom: 100,
          right: 90,
          left: 90,
        ),
      ],
    );
  }
}
