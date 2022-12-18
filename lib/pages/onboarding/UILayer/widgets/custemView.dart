import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fruits_markets/pages/onboarding/UILayer/widgets/pagevewicondiscription.dart';

class custem_view extends StatelessWidget {
  const custem_view({super.key, this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        custemitem(
          image: "assets/images/Picture4.jpg",
          title: "E Shopping",
          subtitle: "Explore  top organic fruits & grab them",
        ),
        custemitem(
          image: "assets/images/Picture5.jpg",
          title: "Delivery on the way",
          subtitle: "Get your order by speed delivery",
        ),
        custemitem(
          image: "assets/images/Picture2.jpg",
          title: "Delivery Arrived",
          subtitle: "Order is arrived at your Place",
        ),
      ],
    );
  }
}
