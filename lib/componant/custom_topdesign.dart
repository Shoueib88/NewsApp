import 'package:flutter/material.dart';

import 'package:news_app/const/strings.dart';

class K {
  static topdesign(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search,
                          size: 30, color: Colors.white)),
                ],
              )),
          const SizedBox(height: 20),
          Text(Strings.titletext,
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const SizedBox(height: 5),
          Text(
            Strings.subtitletext,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 232, 226, 226)),
          ),
        ],
      ),
    );
  }
}
