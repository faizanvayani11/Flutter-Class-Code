// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class homeView extends StatefulWidget {
  const homeView({super.key});

  @override
  State<homeView> createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  TextEditingController txtController = TextEditingController();

  // CollectionReference users = FirebaseFirestore.instance.collection('users');
  // Future<QuerySnapshot> addValue() {}

  addUsers() {
    FirebaseFirestore.instance
        .collection('users')
        .add({'name': 'Faizan', 'number': '03333333333'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User Function"),
        // title: TextField(
        //   controller: txtController,
        //   decoration: const InputDecoration(hintText: "Enter...."),
        // ),
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              addUsers();
            },
            child: Text("Add User")),
      ),
    );
  }
}
