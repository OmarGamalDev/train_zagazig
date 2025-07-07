import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const CustomInputField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303.26.w,
      height: 50.97.h,
      child: TextFormField(
        obscureText: obscureText,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Color(0xff9CA2AE), width: 1.0),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 18.h,
            horizontal: 16.w,
          ),
        ),
      ),
    );
  }
}
