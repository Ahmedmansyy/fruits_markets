import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruits_markets/core/cotroool/sizeconfig.dart';
import 'package:fruits_markets/pages/Splash/UIlayer/Splash_view.dart';
import 'package:fruits_markets/pages/onboarding/UILayer/onBoarding_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// 1- we have to use stl widget to make Animation

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  //? to use for Nullable or not (Null check operator)
  //if it null you have to make !(not)  to ensure (تاكد) its not null value
  AnimationController? animationController;
  Animation<double>? fadinganimation;

  @override
  void initState() {
    //to begin animation
    super.initState();
    animationController = AnimationController(
      vsync: this, // for SingleTickerProviderStateMixin or more
      duration: const Duration(milliseconds: 600), //when it will closed ?
    );
    fadinganimation =
        //when it will start and end Animation
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    //       // ..addListener(() {
    //       //   setState(() {
    //       //     if (animationController!.isCompleted) {
    //       //       animationController?.repeat(
    //       //         reverse: true,
    //       //       );
    //       //     }
    //         });
    //       });
    // //if we do ! then the code do not get throw exseption it will lage only (هيعلق)
    // animationController?.forward();
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Container( 
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Spacer(),
        const Spacer(),
        SafeArea(
          child: FadeTransition(
            opacity: fadinganimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 51,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/fruit.png'),
      ]),
    );
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 3), () {
    Get.to(() => onBoardingView(), transition: Transition.fade);
  });
}
