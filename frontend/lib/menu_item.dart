import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key, required this.content});

  final String content;

  @override
  MenuItemState createState() => MenuItemState();
}

class MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: const LinearBorder(),
        ),
        onPressed: () {},
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.content,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              const Text(
                "FOOD",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
