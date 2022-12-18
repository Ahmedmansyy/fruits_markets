import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruits_markets/pages/onboarding/UILayer/widgets/onBoarding_Body.dart';

class onBoardingView extends StatelessWidget {
  const onBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoardingBody(),
    );
  }
}