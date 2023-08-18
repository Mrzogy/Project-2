import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widget/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Align(
            alignment: Alignment.center,
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          actions: const [
            Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.green,
                heroTag: "btnAdd",
                child: const Icon(Icons.add_box_rounded),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home())))
          ],
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: prudoctslist.length,
            itemBuilder: (context, index) {
              return Carduser(prudocts: prudoctslist[index]);
            }));
  }
}
