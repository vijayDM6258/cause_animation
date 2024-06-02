import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late Animation SizeAnimation;
  late Animation ColorAnimation;

  @override
  void initState() {
    super.initState();
    AnimationController animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
      lowerBound: 0,
      upperBound: 1,
    );
    animationController.addListener(() {
      setState(() {});
    });
    SizeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0, 1.5),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Animation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              child: Image.asset("assets/images/one.jpeg"),
            ),
          ),
          ElevatedButton(
            onPressed: () {

              setState(() {

              });
            },
            child: Text("press"),
          )
        ],
      ),
    );
  }
}
