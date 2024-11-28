import 'package:flutter/material.dart';
import 'package:frontend/menu_item.dart';

// ignore: must_be_immutable
class OrderPrompt extends StatefulWidget {
  OrderPrompt({super.key, required this.menuReference});

  MenuItem menuReference;

  @override
  State<OrderPrompt> createState() => _OrderPromptState();
}

class _OrderPromptState extends State<OrderPrompt> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Place Order?"),
      children: [
        SimpleDialogOption(
          child: Text(
            widget.menuReference.content,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          )
        ),
        const SimpleDialogOption(
          child: Text(
            "\$3.99",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          )
        ),
        SimpleDialogOption(
          onPressed: () {},
          child: const Text("Confirm"),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
      ],
    );
  }
}
