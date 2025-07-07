import 'package:flutter/material.dart';
import 'package:train_zagazig_app/features/auth/widgets/welcome_screen.dart';
import 'package:train_zagazig_app/features/chat/presentation/screen/chat_screen.dart';
import 'package:train_zagazig_app/features/home/home_screen.dart';
import 'package:train_zagazig_app/features/onboarding/presentation/screens/onboarding_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    // case SignUpScreen.routeName:
    //   return MaterialPageRoute(builder: (_) => const SignUpScreen());
    case ChatScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ChatScreen());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}