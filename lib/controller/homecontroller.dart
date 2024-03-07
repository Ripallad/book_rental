import 'dart:convert';
import 'dart:ffi';

import 'package:book_rental/model/bookmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Homecontroller extends GetxController {
  RxList booklist = [].obs;
  RxBool obxcheck = false.obs;
  bookapi() async {
    booklist.value = [];
    var url = "https://openlibrary.org/people/mekBot/books/already-read.json";
    var responce = await http.get(Uri.parse(url));

    try {
      var decodedata = jsonDecode(responce.body);
      var data = decodedata['reading_log_entries'];
      //  print(data);
// var mydata = data['work'];
      // print(mydata);
      // var list = data.map((m) => Work.fromMap(m)).toList();
      // print(list);
      // booklist.clear();
      // booklist.addAll(list);
      List book = [];
      for (var i = 0; i < data.length; i++) {
        if (data[i] != null) {
          booklist.add(data[i]);
          book.add(data[i]);
        }
      }
      // booklist.addAll(book);
      // print(booklist);
    } catch (e) {
      e.toString();
    }
  }

  @override
  void onInit() {
    bookapi();
    super.onInit();
  }
}
