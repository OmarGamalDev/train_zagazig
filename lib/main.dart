import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_zagazig_app/core/constants/routes.dart';
import 'package:train_zagazig_app/core/services/shared_prefrences_singleton.dart';
import 'package:train_zagazig_app/features/chat/presentation/screen/chat_screen.dart';
import 'package:train_zagazig_app/features/onboarding/presentation/screens/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesSingleton.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: onGenerateRoute,
          initialRoute:
              SharedPreferencesSingleton.getBool("isOnBoardingViewScreen")
              ? ChatScreen.routeName
              : OnboardingScreen.routeName,
        );
      },
    );
  }
}
