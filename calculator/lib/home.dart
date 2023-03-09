import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
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
      elevation: 10,
      actions: [
        Icon(Icons.notifications),
        Icon(Icons.person),
        IconButton(onPressed: () {}, icon: const Icon(Icons.person))
      ],
    );
  }
}
