import 'package:flutter/material.dart';

import 'Views/screens/home_page.dart';

void main() {
  runApp(FirstAnimation());
}

class FirstAnimation extends StatefulWidget {
  const FirstAnimation({super.key});

  @override
  State<FirstAnimation> createState() => _FirstAnimationState();
}

class _FirstAnimationState extends State<FirstAnimation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      title: "animtion app color etc..",
      home: HomePage(),
    );
  }
}
