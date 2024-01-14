import 'package:class20/Screens/Home_Screen/home_view_model.dart';
// import 'package:class20/Screens/Home_Screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(viewmodel.addCounter().toString()),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Add Value"))
              ],
            ),
          );
        });
  }
}
