import 'package:get/get.dart';
import 'package:news_app/const/strings.dart';
import 'package:news_app/model/News_Model.dart';
import 'package:news_app/services/News_Services.dart';

class Ncontroller extends GetxController {
  static int news = 0;
  @override
  void onInit() {
    getapi(category[news]);
    super.onInit();
  }

  List<News>? articalelist = [];
  getapi(String category) async {
    articalelist = await NewsServices.fetchnews(category);
    update();
  }

  getindex(index) {
    news = index;
    update();
  }
}
