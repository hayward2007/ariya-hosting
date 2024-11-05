import 'package:ariya/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: '아리야',
      initialRoute: '/home',
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    ),
  );
}
