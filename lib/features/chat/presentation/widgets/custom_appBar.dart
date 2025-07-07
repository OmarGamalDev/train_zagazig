import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: const Color(0xff075E54),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'Chat',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Add your menu action
              },
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: const Color(0xff075E54),
                child: Icon(
                  Icons.more_vert,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
