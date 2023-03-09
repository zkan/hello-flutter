import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(24),
              )
            ),
            child: const Text("Calculator Left"),
          ),
          Container(
            height: 200,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
              )
            ),
            child: const Text("Calculator Right"),
          ),
        ],
      ),
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
