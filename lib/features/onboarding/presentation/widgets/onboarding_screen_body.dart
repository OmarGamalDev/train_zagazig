import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_zagazig_app/core/services/shared_prefrences_singleton.dart';
import 'package:train_zagazig_app/core/widgets/custom_button.dart';
import 'package:train_zagazig_app/features/auth/widgets/welcome_screen.dart';
import 'package:train_zagazig_app/features/onboarding/presentation/widgets/on_boarding_page_view.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  late PageController pageController;
  double currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!;
      setState(() {});
    });
    super.initState();
  }

  @override

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView(pageController: pageController)),
        DotsIndicator(
          dotsCount: 3,
          position:currentPage,
          decorator: DotsDecorator(
            activeColor: Color(0xff075E54),
            color: Color.fromARGB(255, 158, 158, 158),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Row(
            children: [
              SizedBox(width: 20,),
              CustomButton(
                onPressed: () {
                  SharedPreferencesSingleton.setBool("isOnBoardingViewScreen", true);
                  Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                text: 'Skip',
                backgroundColor: Colors.white,
                height: 48.h,
                width: 150.w,
                colorText: Color(0xff075E54),
              ),
              SizedBox(width: 20.w),
              CustomButton(
                onPressed: () {
                  if (currentPage == 2) {
                     SharedPreferencesSingleton.setBool("isOnBoardingViewScreen", true);
                    Navigator.pushReplacement(context,
                   MaterialPageRoute(builder: (context) => WelcomeScreen()));
                  } else {
                    pageController.nextPage (
                    duration: Duration(milliseconds: 20), 
                    curve: Curves.linear
                    );
                  }
                },
                text: 'Next',
                backgroundColor: Color(0xff075E54),
                height: 48.h,
                width: 150.w,
                colorText: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
