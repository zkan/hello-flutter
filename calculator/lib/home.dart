import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ODDS Calculator",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: Colors.indigo,
            )),
      ),
    );
  }
}
