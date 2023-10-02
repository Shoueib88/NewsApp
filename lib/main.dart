import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/News_Controller.dart';
import 'package:news_app/view/Home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(Ncontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
