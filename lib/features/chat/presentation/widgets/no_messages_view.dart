import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoMessagesView extends StatelessWidget {
  const NoMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 96.h),
        Center(
          child: Image.asset(
            "assets/images/chat.png",
            width: 104.w,
            height: 104.h,
          ),
        ),
        SizedBox(height: 20),
        SizedBox(height: 10),
        Text(
          "Train Connect",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Sharing live updates on train delays or changes.",
          style: TextStyle(
            color: const Color(0xFF8F8F8F),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
