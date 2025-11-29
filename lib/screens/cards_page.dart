import 'package:assignment_two_flutter/widgets/app_bar.dart';
import 'package:flutter/material.dart';


class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "My Cards"),
      body: const Center(
        child: Text(
          "My Cards Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
