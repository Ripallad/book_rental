import 'package:book_rental/controller/authcontroller.dart';
import 'package:book_rental/authentication/otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // final auth = Get.put(Authcontroller());
    // final TextEditingController text = TextEditingController();
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
          Center(
            child: Container(
              height: 50.h,
              width: 390.w,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.5099999904632568),
                ),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 174, 160, 160)),
                    label: Text(
                      "Phone Number",
                      style: TextStyle(color: Colors.green),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              // if (auth.home == '') {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text("Please Enter mobile no")));
              // }
              // if (auth.length < 10) {
              //   ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(content: Text("Please Enter 10 Digit no")));
              // } else {
              //   authcontroller.PhoneAuth("+91", controller.text, context);
              // }
            },
            child: Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 97, 210, 101),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  "Send Otp",
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
