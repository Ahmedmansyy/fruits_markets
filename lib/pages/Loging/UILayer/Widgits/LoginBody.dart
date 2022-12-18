import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login_Body extends StatelessWidget {
  const Login_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 190,
          ),
          Image.asset('assets/images/Picture1.jpg'),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Fruit Market",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.amberAccent,
            ),
          ),
          const SizedBox(
            height: 190,
          ),
          Row(children: [
            const SizedBox(width: 50,),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text(
            //     "Fruit Market",
            //     style: TextStyle(
            //       fontFamily: 'Poppins',
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20,
            //       color: Colors.amberAccent,
            //     ),
            //   ),
            // ),
            const SizedBox(width: 10,),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Fruit Market",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amberAccent,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

