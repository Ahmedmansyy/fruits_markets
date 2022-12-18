import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/Splash/UIlayer/Splash_view.dart';
void main() {
  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});  
//use material app
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
