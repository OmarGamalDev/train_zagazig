import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.height,
    required this.width, required this.colorText,
  });
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor,colorText;
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
           side: BorderSide(color: Color(0XFF075E54) ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          minimumSize: Size(width, height),
        ),
        onPressed: onPressed,
        child: Text(text,style: TextStyle(color: colorText),),
      ),
    );
  }
}
