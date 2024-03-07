import 'dart:developer';

import 'package:book_rental/controller/homecontroller.dart';
import 'package:book_rental/home/homewidgets.dart';
import 'package:book_rental/home/takeit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final homecontroller = Get.put(Homecontroller())..bookapi();
    final TextEditingController text = TextEditingController();
    print(homecontroller.booklist.value);
    print('height: ${size.height}, width: ${size.width}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 97, 210, 101),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Books",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          Icon(
            Icons.logout,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            children: [
              Divider(
                height: 1,
                color: Color.fromARGB(255, 206, 222, 181),
              ),
              Container(
                width: double.infinity.w,
                height: 380.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 97, 210, 101),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100))),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: text,
                        showCursor: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          contentPadding: EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide:
                                BorderSide(color: Color(0x30CCCCCC), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide:
                                BorderSide(color: Color(0x30CCCCCC), width: 2),
                          ),
                        ),
                      ),
                      Text(
                        "Recently added",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 250.h,
                        child: ListView.builder(
                          itemCount: homecontroller.booklist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            // print(homecontroller.booklist);
                            var book = homecontroller.booklist[index];

                            // log(book.toString());
                            return Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => Takeit());
                                    },
                                    child: Container(
                                      height: 180.h,
                                      width: 130.w,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://covers.openlibrary.org/b/id/${homecontroller.booklist[index]['work']['cover_id'] ?? ''}-M.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    homecontroller.booklist[index]['work']
                                            ['title'] ??
                                        '',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    homecontroller.booklist[index]['work']
                                                ['first_publish_year']
                                            .toString() ??
                                        '',
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My Books",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 210, 101),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "(4)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 210, 101),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 250.h,
                      child: ListView.builder(
                        itemCount: homecontroller.booklist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          //print(homecontroller.booklist);
                          var book = homecontroller.booklist[index];

                          //log(book.toString());
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => Takeit());
                                  },
                                  child: Container(
                                    height: 180.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://covers.openlibrary.org/b/id/${homecontroller.booklist[index]['work']['cover_id'] ?? ''}-M.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                  ),
                                ),
                                Text(
                                  homecontroller.booklist[index]['work']
                                          ['title'] ??
                                      '',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  homecontroller.booklist[index]['work']
                                              ['first_publish_year']
                                          .toString() ??
                                      '',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Wishlist",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 210, 101),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "(3)",
                          style: TextStyle(
                              color: Color.fromARGB(255, 97, 210, 101),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 250.h,
                      child: ListView.builder(
                        itemCount: homecontroller.booklist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // print(homecontroller.booklist);
                          var book = homecontroller.booklist[index];

                          // log(book.toString());
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => Takeit());
                                  },
                                  child: Container(
                                    height: 180.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://covers.openlibrary.org/b/id/${homecontroller.booklist[index]['work']['cover_id'] ?? ''}-M.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                  ),
                                ),
                                Text(
                                  homecontroller.booklist[index]['work']
                                          ['title'] ??
                                      '',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  homecontroller.booklist[index]['work']
                                              ['first_publish_year']
                                          .toString() ??
                                      '',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Color.fromARGB(255, 97, 210, 101),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        categorywidget(
                            "assets/images/Rectangle1.png", "Fantasy"),
                        SizedBox(
                          width: 20.w,
                        ),
                        categorywidget(
                            "assets/images/Rectangle2.png", "Fiction")
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        categorywidget("assets/images/Rectangle1.png", "Crime"),
                        SizedBox(
                          width: 20.w,
                        ),
                        categorywidget(
                            "assets/images/Rectangle2.png", "Young Adult")
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        categorywidget(
                            "assets/images/Rectangle1.png", "Horror"),
                        SizedBox(
                          width: 20.w,
                        ),
                        categorywidget(
                            "assets/images/Rectangle2.png", "Romance")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Center(
//           child: Row(
//             children: [
//               Container(
//                       height: 200.h,
//                       width: 200.w,
//                       decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
//                       child: Text(
//               "This is Container which is blue",
//               style: TextStyle(fontSize: 20.sp),
//                       ),
//                     ),
//                      SizedBox(
//             width: 20,
//           ),
//           Container(
//             height: 150.h,
//             width: 150.w,
//             decoration: BoxDecoration(
//                 color: Colors.blue, borderRadius: BorderRadius.circular(20.r)),
//             child: Text(
//               "This is Container which is blue",
//               style: TextStyle(fontSize: 20.sp),
//             ),
//           ),
//             ],
//           )),