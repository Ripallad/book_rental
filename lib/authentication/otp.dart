import 'package:book_rental/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 210, 101),
        centerTitle: true,
        title: Text(
          "Books",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Phone Verification",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Enter your OTP code here",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Center(
            child: Pinput(
              length: 6,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Home());
            },
            child: Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 97, 210, 101),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
