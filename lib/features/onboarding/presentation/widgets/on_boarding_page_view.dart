import 'package:flutter/material.dart';
import 'package:train_zagazig_app/features/onboarding/presentation/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: (pageController.hasClients ? pageController.page!.round() : 0)!=0,
          image: "assets/images/on_boarding_image1.png",
          title: "Chat with Fellow Passengers",
          subtitle:
              " Connect with other travelers, share tips, and make your journey more enjoyable",
        ),
        PageViewItem(
          image: "assets/images/on_boarding_image2.png",
          title: "All-in-One Travel Guide",
          subtitle: "Access station details, schedules, and booking info.",
          isVisible:  (pageController.hasClients ? pageController.page!.round() : 0)!=0,
        ),
        PageViewItem(
          image: "assets/images/on_boarding_image3.png",
          title: "Stay in Touch with Train Staff",
          subtitle:
              "Get quick assistance and important updates directly from the crew.",
          isVisible:  (pageController.hasClients ? pageController.page!.round() : 0)!=0,
        ),
      ],
    );
  }
}
