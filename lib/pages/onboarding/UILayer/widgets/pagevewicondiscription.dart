import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class custemitem extends StatelessWidget {
  const custemitem({super.key, this.title, this.subtitle, this.image});

  final String? title;
  final String? subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(
          height: 190,
        ),
          SizedBox(child: Image.asset(image!), height: 150,),
          const SizedBox(
            height: 22,
          ),
          Text(
            title!,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w600,
            ),
            softWrap: false,
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            subtitle!,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Color(0xff78787c),
            ),
            softWrap: false,
          ),
        ],
      ),
      
    );
  }
}
