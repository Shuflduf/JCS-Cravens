import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({super.key, required this.content, required this.type, required this.enabled});

  final String content, type;
  final bool enabled;

  @override
  MenuItemState createState() => MenuItemState();
}

class MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue[400],
          disabledBackgroundColor: Colors.blue[800],
          shape: const LinearBorder(),
        ),
        onPressed: (widget.enabled ? (() {}) : (null)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                widget.content,
                maxLines: 2,
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
                widget.type,
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
    );
  }
}
