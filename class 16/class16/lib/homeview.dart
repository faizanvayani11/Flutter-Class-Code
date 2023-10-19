// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<homeView> {
  Future futureCall(counter) async {
    await Future.delayed(const Duration(seconds: 3));
    return counter * counter;
  }

  Stream streamcall(int counter) async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      yield counter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      FutureBuilder(
        future: futureCall(10),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text(
              "Future : ${snapshot.data.toString()}",
              style: const TextStyle(fontSize: 50),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
      const Text("======================", style: TextStyle(fontSize: 30)),
      StreamBuilder(
          stream: streamcall(0),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                "stream : ${snapshot.data.toString()}",
                style: const TextStyle(fontSize: 50),
              );
            }
            return const CircularProgressIndicator();
          })
    ])));
  }
}
