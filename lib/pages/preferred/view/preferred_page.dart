// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class preferredPage extends StatelessWidget {
  const preferredPage({super.key});
  ElevatedButton getButton(String text, bool x) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar("Hi", "This Function not Working yet");
      },
      style: ElevatedButton.styleFrom(
        primary: x ? Colors.black : Colors.white, // Background color
        onPrimary: x ? Colors.white : Colors.black, // Text color

        side:
            BorderSide(color: Colors.black, width: 1), // Border color and width
        padding: EdgeInsets.symmetric(
            horizontal: text.length < 5 ? 22.w : 14.w, vertical: 10.h),
        // Padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r), // Border radius
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Column(children: [
            SizedBox(
              height: 70.h,
            ),
            Text(
              "Tell us your preferred book",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("Mystery", true),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Fiction", false),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Sci-fi", false),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("History", false),
                SizedBox(
                  width: 17.w,
                ),
                getButton("Science", true),
                SizedBox(
                  width: 17.w,
                ),
                getButton("Health", true),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("Business", false),
                SizedBox(
                  width: 17.w,
                ),
                getButton("Art", false),
                SizedBox(
                  width: 17.w,
                ),
                getButton("Sport", false),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("Young adult", true),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Family", false),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Self-help", false),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("Education", false),
                SizedBox(
                  width: 10.w,
                ),
                getButton("math", false),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Food", false),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                getButton("Poetry", true),
                SizedBox(
                  width: 10.w,
                ),
                getButton("Romance", false),
              ],
            ),
            SizedBox(
              height: 160.h,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/discover");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black, // Background color
                onPrimary: Colors.white, // Text color
                side: BorderSide(
                    color: Colors.black, width: 1), // Border color and width
                padding: EdgeInsets.symmetric(
                    horizontal: 20.w, vertical: 16.h), // Padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r), // Border radius
                ),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
