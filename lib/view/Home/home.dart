import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/componant/custom_listview.dart';
import 'package:news_app/componant/custom_topdesign.dart';
import 'package:news_app/const/strings.dart';
import 'package:news_app/const/style.dart';
import 'package:news_app/controller/News_Controller.dart';
import 'package:news_app/view/Home/controller/home_controller.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(HomeController());
  final apicontrol = Get.put(Ncontroller());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        N.background(context),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(children: [
              Container(
                  height: 230,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      K.topdesign(context),
                    ],
                  )),
              GetBuilder(
                  init: Ncontroller(),
                  builder: (listcontrol) {
                    return Container(
                        height: 600,
                        child: DefaultTabController(
                            length: category.length,
                            child: Scaffold(
                              backgroundColor: Colors.transparent,
                              appBar: AppBar(
                                backgroundColor: Colors.transparent,
                                elevation: 0.0,
                                bottom: TabBar(
                                    onTap: (value) {
                                      listcontrol.getapi(category[value]);
                                      listcontrol.getindex(value);
                                    },
                                    isScrollable: true,
                                    indicatorColor:
                                        Color.fromARGB(255, 220, 218, 218),
                                    tabs: N.tabappbar),
                              ),
                              body: TabBarView(
                                  children: List.generate(
                                      7, (index) => listnews.list(index))),
                            )));
                  })
            ]))
      ],
    );
  }
}
