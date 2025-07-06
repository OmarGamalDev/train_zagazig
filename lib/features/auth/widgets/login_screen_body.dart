import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:train_zagazig_app/features/auth/validator/input_validator.dart';
import 'package:train_zagazig_app/features/auth/widgets/custom_elevated_button.dart';
import 'package:train_zagazig_app/features/auth/widgets/custom_text_field.dart';


class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 38.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff19376D),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Image.asset(
              'assets/images/login_photo.png',
              alignment: Alignment.center,
              height: 185.61.h,
              width: 310.45.w,
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 18.27.sp,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomInputField(
              hintText: 'Email',
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              validator: Validators.validateEmail,
            ),
            SizedBox(height: 20.h),
            CustomInputField(
              hintText: 'Password',
              icon: Icons.lock,
              obscureText: true,
              validator: Validators.validatePassword,
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    // Handle checkbox state change
                  },
                  activeColor: Color(0xff19376D),
                  checkColor: Colors.white,
                ),
                Text(
                  'Remember me?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff9CA2AE),
                  ),
                ),
                SizedBox(width: 60.h),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff19376D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            CustomElevatedButton(
              text: 'Login',
              backgroundColor: Color(0xff19376D),
              colorText: Colors.white,
              onPressed: () {
                // Handle login action
              },
            ),
          ],
        ),
      ),
    );
  }
}
