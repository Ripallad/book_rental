import 'package:book_rental/home/homewidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            Icons.search,
            color: Colors.white,
            size: 26,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 1,
              color: Color.fromARGB(255, 206, 222, 181),
            ),
            Container(
              width: double.infinity.w,
              height: 300.h,
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
                    Text(
                      "Recently added",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: bookwidget(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "(4)",
                        style: TextStyle(
                            color: Color.fromARGB(255, 97, 210, 101),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: bookwidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "(3)",
                        style: TextStyle(
                            color: Color.fromARGB(255, 97, 210, 101),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: bookwidget(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      categorywidget("assets/images/Rectangle1.png", "Fantasy"),
                      SizedBox(
                        width: 20,
                      ),
                      categorywidget("assets/images/Rectangle2.png", "Fiction")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      categorywidget("assets/images/Rectangle1.png", "Crime"),
                      SizedBox(
                        width: 20,
                      ),
                      categorywidget(
                          "assets/images/Rectangle2.png", "Young Adult")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      categorywidget("assets/images/Rectangle1.png", "Horror"),
                      SizedBox(
                        width: 20,
                      ),
                      categorywidget("assets/images/Rectangle2.png", "Romance")
                    ],
                  )
                ],
              ),
            ),
          ],
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