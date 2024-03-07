import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Takeit extends StatelessWidget {
  final blist;
  const Takeit({
    super.key,
    required this.blist,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 210, 101),
        centerTitle: true,
        title: Text(
          "Books",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 200.h,
              width: 140.w,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://covers.openlibrary.org/b/id/${blist[0]['cover_id'] ?? ''}-M.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            Text(
              "${blist[0]['title']}",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Auther Name:",
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "${blist[0]['author_names'][0]}",
                  style: TextStyle(fontSize: 16.sp),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "${blist[0]['first_publish_year']}",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Available",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color.fromARGB(255, 97, 210, 101),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 97, 210, 101),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Take it",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 180.h,
              width: double.infinity,
              // color: Colors.blueAccent,
              child: ListTile(
                title: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel imperdiet justo. Fusce congue sit amet orci et faucibus. Sed molestie tortor sed mi tempor, at tempor dui tincidunt. Donec posuere scelerisque odio. Integer fringilla magna ante, id aliquam ex volutpat vel. Pellentesque tincidunt arcu at aliquam consequat. Nulla sollicitudin fringilla nibh, quis interdum velit iaculis nec. ",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
