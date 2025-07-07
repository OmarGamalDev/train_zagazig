// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:train_zagazig_app/features/auth/validator/input_validator.dart';
// import 'package:train_zagazig_app/features/auth/widgets/custom_text_field.dart';

// class SignUpScreenBody extends StatelessWidget {
//   const SignUpScreenBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 50.h),
//         Row(
//           children: [
//             SizedBox(width: 16.w),
//             Icon(Icons.arrow_back_ios_new),
//             SizedBox(width: 8.w),
//             Text(
//               "Back",
//               style: TextStyle(
//                 color: const Color(0xFF010101),
//                 fontSize: 16.sp,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 32.h),
//         Text(
//           'Sign up with your email or',
//           style: TextStyle(
//             color: const Color(0xFF010101),
//             fontSize: 20.sp,
//             fontFamily: 'Inter',
//           ),
//         ),
//         Text(
//           'phone number',
//           style: TextStyle(
//             color: const Color(0xFF010101),
//             fontSize: 20.sp,
//             fontFamily: 'Inter',
//           ),
//         ),
//         SizedBox(height: 16.h),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0),
//           child: CustomInputField(
//             hintText: 'Name',
//             keyboardType: TextInputType.name,
//             validator: Validators.validateName,
//           ),
//         ),
//         SizedBox(height: 16.h),
// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 24.0),
//   child: CustomInputField(
//     validator: Validators.validatePhoneNumber,
//     hintText: 'Your mobile number',
//     child: IntlPhoneField(
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(),
//         ),
//       ),
//       initialCountryCode: 'EG',
//     ),
//   ),
// ),

//       ],
//     );
//   }
// }
