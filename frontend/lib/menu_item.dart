import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem(
      {super.key,
      required this.content,
      required this.price,
      required this.highlighted});

  final String content, price;
  final bool highlighted;

  @override
  MenuItemState createState() => MenuItemState();
}

class MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: widget.highlighted ? Colors.blue[400] : Colors.blue[800],
        width: 400,
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                widget.content,
                maxLines: 2,
                wrapWords: false,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48.0,
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                widget.price,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontFamily: "RobotoMono",
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
