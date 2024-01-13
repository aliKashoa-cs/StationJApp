// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import '../controller/navigation_controller.dart';

class discoverPage extends StatelessWidget {
  final navigationController navigation_controller =
      Get.put(navigationController());

  Widget buildCircleAvatar(double x, String url) {
    return Positioned(
      left: x,
      bottom: 6,
      child: CircleAvatar(
        radius: 19,
        backgroundImage: NetworkImage(url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String img =
        "https://plus.unsplash.com/premium_photo-1676998930667-cab56c8fa602?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.7,
        leading: Icon(Icons.search),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(img),
            ),
          ),
        ],
        title: Text(
          "Discover",
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontFamily: 'myfont',
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 12.h, bottom: 12.h),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find talented",
                            style: TextStyle(
                                fontFamily: 'myfont',
                                color: Colors.blueGrey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Explore talent",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'myfont',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                ),
                Divider(
                  color: Colors.grey, // Customize the color of the divider
                  height: 30.h, // Adjust the height of the divider
                  thickness: 0.3.r, // Set the thickness of the divider
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Hi", "This Function not Working yet",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(seconds: 2));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    onPrimary: Colors.black, // Text color
                    side: BorderSide(
                        color: Colors.black,
                        width: 1), // Border color and width
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.w, vertical: 16.h), // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.r), // Border radius
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundImage: NetworkImage(img),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Creative",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "inspiring locations",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14.sp),
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              )
                            ],
                          ),
                          Text(
                            "Recent",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.sp),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 370.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.r),
                            child: Image.network(
                              img,
                              fit: BoxFit.cover,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.r),
                              color: Colors.white,
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 0.2,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [],
                            ),
                          ),
                          bottom: 0,
                          left: 0,
                          right: 0,
                        ),
                        Positioned(
                          child: Text(
                            "Engage In",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                                fontFamily: 'myfont',
                                fontWeight: FontWeight.w600),
                          ),
                          right: 12.w,
                          bottom: 16.h,
                        ),
                        buildCircleAvatar(20.w, img),
                        buildCircleAvatar(40.w, img),
                        buildCircleAvatar(60.w, img),
                        buildCircleAvatar(80.w, img),
                        buildCircleAvatar(100.w, img),
                        Positioned(
                          width: 70.w,
                          height: 100.h,
                          right: 10.w,
                          top: 15.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14.r),
                            child: Image.network(
                              img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          )),
      bottomNavigationBar: Obx(() => MoltenBottomNavigationBar(
            selectedIndex: navigation_controller.selectIndex.value,
            domeHeight: 25,
            // specify what will happen when a tab is clicked
            onTabChange: (clickedIndex) {
              navigation_controller.changeIndex(clickedIndex);
            },
            // ansert as many tabs as you like
            tabs: [
              MoltenTab(
                icon: Icon(Icons.home),

                // selectedColor: Colors.yellow,
              ),
              MoltenTab(
                icon: Icon(Icons.search),
                // selectedColor: Colors.yellow,
              ),
              MoltenTab(
                icon: Icon(Icons.add),
                // selectedColor: Colors.yellow,
              ),
              MoltenTab(
                icon: Icon(Icons.messenger),
                // selectedColor: Colors.yellow,
              ),
              MoltenTab(
                icon: Icon(Icons.person),
                // selectedColor: Colors.yellow,
              ),
            ],
          )),
    );
  }
}
