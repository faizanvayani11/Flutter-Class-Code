import 'dart:js_interop';

import 'package:class25/Screens/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController hc = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          GetBuilder<HomeController>(
              init: hc,
              builder: (Value) {
                return const Text("data");
              }),
          ElevatedButton(onPressed: () {hc.addCounter()}, child: Text("ADD"))
        ],
      ),
    );
  }
}
