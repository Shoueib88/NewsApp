import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/News_Controller.dart';

class HomeController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  final apicontrol = Get.put(Ncontroller());
  @override
  void onInit() {
    print('${apicontrol.articalelist!.length}');
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    super.onInit();
  }
}
