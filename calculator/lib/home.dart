import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ODDS Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: Colors.indigo.shade800,
          ),
          textAlign: TextAlign.left,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
