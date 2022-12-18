import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../pages/Loging/UILayer/LoginView.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.title, this.ontap, this.pageController});

  final String? title;
  final VoidCallback? ontap;
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ElevatedButton(
        onPressed: () {
          if (pageController!.page! < 2) {
            Get.to(
              () => Login_View(),
              transition: Transition.rightToLeft,
              duration: Duration(milliseconds: 500),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff69a03a)),
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
        ),
        child: Text(
          title!,
          style: TextStyle(fontSize: 30),
        ),
      ),

      // child: Center(
      //   child: Text(
      //     'Next',
      //     style: TextStyle(
      //       fontFamily: 'Poppins',
      //       fontSize: 14,
      //       color: const Color(0xffffffff),
      //       fontWeight: FontWeight.w500,
      //     ),
      //     softWrap: false,
      //   ),
      // ),
      // decoration: BoxDecoration(
      //   color: const Color(0xff69a03a),
      //   borderRadius: BorderRadius.circular(5.0),
      // ),
    );
  }
}
