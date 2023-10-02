import 'package:news_app/model/News_Model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsServices {
  // ignore: body_might_complete_normally_nullable
  static Future<List<News>?> fetchnews(String category) async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=fae3c798732b41adb0c457ec7ec07a9a'));
    print(response);
    //if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    print(jsondata);
    final fromjson = NewsModel.fromJson(jsondata);
    print('this fromjson == ${fromjson.articles}');
    return fromjson.articles;
  }
}
