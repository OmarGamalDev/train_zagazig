import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_zagazig_app/core/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
    static const String routeName = 'Welcome Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 249.h),
          Center(child: Image.asset("assets/images/welcome_logo.png")),
          Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF075E54),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0.80,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Lorem ipsum dolor sit amet consectetur. ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: const Color(0xFF075E54),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
              height: 1.33,
            ),
          ),
          SizedBox(height: 188,),
          CustomButton(onPressed: () {  }, text: 'Create an account', backgroundColor: Color(0xff075E54), height: 48.h, width: 364.w, colorText: Colors.white,),
          SizedBox(height: 16,),
          CustomButton(onPressed: () {  }, text: 'Log In', backgroundColor:Colors.white, height: 48.h, width: 364.w, colorText: Color(0xff075E54))
        ],
      ),
    );
  }
}
