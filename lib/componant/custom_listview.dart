import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/News_Controller.dart';
import 'package:url_launcher/url_launcher.dart';

class listnews {
  //ListView.separated to display the data
  static list(val) {
    final controller = Get.put(Ncontroller());
    return ListView.separated(
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        itemCount: controller.articalelist!.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 5);
        },
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Colors.white,
              child: Container(
                  padding: const EdgeInsets.all(8),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        width: 350,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                controller.articalelist?[index].title
                                        .toString() ??
                                    'no data',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(height: 8),
                              GestureDetector(
                                  onTap: () {
                                    launchUrl(Uri.parse(
                                        controller.articalelist![index].url!));
                                  },
                                  child: const Text(
                                    'see more',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w300),
                                  ))
                            ]))
                  ])));
        });
  }

  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
