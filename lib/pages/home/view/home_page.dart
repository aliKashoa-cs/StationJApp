// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Column(children: [
            SizedBox(
              height: 50.h,
            ),
             Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/img.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Text(
                "Welcome to",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                "build your skills and routeins easily with",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/preferred");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Background color
                onPrimary: Colors.black, // Text color
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
                  'Let\'s get started',
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Hi", "This Function not Working yet");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Background color
                onPrimary: Colors.black, // Text color
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
                  'Don\'t have an account ? Sign up here ',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
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

