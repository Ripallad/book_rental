import 'package:book_rental/home/takeit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget bookwidget() {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Get.to(Takeit());
        },
        child: Container(
          height: 180.h,
          width: 130.w,
          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage("assets/images/Image2.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
      Text(
        "A spark of Light",
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
      ),
      Text(
        "Jodi Picoult",
        style: TextStyle(fontSize: 14.sp),
      ),
    ],
  );
}

Widget categorywidget(assetimage, text) {
  return Container(
    height: 160.h,
    width: 190.w,
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetimage),
          fit: BoxFit.cover,
        ),
        color: Colors.red,
        borderRadius: BorderRadius.circular(15.r)),
    child: Center(
        child: Text(
      text,
      style: TextStyle(
          color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.w500),
    )),
  );
}
