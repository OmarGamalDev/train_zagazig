import 'package:flutter/material.dart';
import 'package:train_zagazig_app/features/onboarding/presentation/widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:OnboardingScreenBody() , 
    );
  }
}