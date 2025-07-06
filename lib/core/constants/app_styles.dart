import 'package:flutter/material.dart';
import 'app_colors.dart'; // استيراد ملف الألوان لاستخدامها في التنسيق

class AppStyles {
  // 🏷️ العناوين الرئيسية
  static const TextStyle headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // 📝 النصوص العادية
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  // 🔘 أزرار وأكشنات
  static const TextStyle buttonText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textWhite,
  );

  // ⚠️ نصوص التنبيهات (نجاح، تحذير، خطأ)
  static const TextStyle successText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.success,
  );

  static const TextStyle warningText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.warning,
  );

  static const TextStyle errorText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.error,
  );
}
