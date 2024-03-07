import 'package:book_rental/authentication/login.dart';
import 'package:book_rental/authentication/otp.dart';
import 'package:book_rental/home/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Authcontroller extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
 FirebaseFirestore firestore = FirebaseFirestore.instance;
  RxString verId = ''.obs;
  RxString otp = ''.obs;
  PhoneAuth(contrycode, mobilenumber, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${contrycode + mobilenumber}",
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Invalid Mobile number")));
        } else {
          print("Error");
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        verId.value = verificationId;
      },
      timeout: const Duration(seconds: 120),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => Otp(),
        ),
        (route) => false);
  }

  verifyotp(code) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verId.value, smsCode: code);
    await firebaseAuth.signInWithCredential(credential);
    Get.offAll(() => Home());
  }

  Future<bool> checkuser() async {
    return (await firestore
            .collection("Phone_number")
            .doc('${firebaseAuth.currentUser?.phoneNumber}')
            .get())
        .exists;
  }

  // checkuserlogin() {
  //   var user = firebaseAuth.currentUser;
  //   if (user == null) {
  //     Get.offAll(() => Login());
  //   } else {
  //     Get.offAll(() => HomeScreen());
  //   }
  // }

  userlogout() {
    firebaseAuth.signOut();
    Get.offAll(() => Login());
  }
}
