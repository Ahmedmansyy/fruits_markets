import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class custem_Indecator extends StatelessWidget {
  const custem_Indecator({super.key, required this.dotIndex});

  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.white,
        activeColor: Color(0xff69a03a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Color(0xff69a03a),
          ),
        ),
      ),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
