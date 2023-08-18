import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/widget/card.dart';

List<Prudocts> prudoctslist = [];
void main() {
  File blogfile =
      File("/Users/mrzogymagbool/Project-2/flutter_application_1/lib/data/data.json");
  var stringBlog = blogfile.readAsStringSync();
  var blogData = json.decode(stringBlog);

  for (var element in blogData["products"]) {
    prudoctslist.add(Prudocts.fromJson(element));
  }
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home()
    );
  }
}
