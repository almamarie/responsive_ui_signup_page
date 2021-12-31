import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  final purpleColor = const Color(0xff6688FF);
  final darkTextColor = const Color(0xff1F1A3D);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffD9D9D9);

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: ListView(
            children: [
              SizedBox(height: 53.h),
              Text(
                "Sign Up to Masterminds",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: darkTextColor),
              ),
              SizedBox(
                height: 4.h,
              ),
              Wrap(
                children: [
                  Text(
                    "Already Have an Account?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    "LogIn",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: purpleColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              getTextField(hint: 'First Name'),
              SizedBox(height: 16.sp),
              getTextField(hint: 'Email'),
              SizedBox(height: 16.sp),
              getTextField(hint: 'Password'),
              SizedBox(height: 16.sp),
              getTextField(hint: 'Confirm Password'),
              SizedBox(height: 16.sp),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
