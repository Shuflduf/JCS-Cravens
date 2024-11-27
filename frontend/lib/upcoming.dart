import 'package:flutter/material.dart';
import 'package:frontend/menu_item.dart';

const List<String> days = ["Monday", "Tuesday"];

class UpcomingMenu extends StatefulWidget {
  const UpcomingMenu({super.key});

  static const List<List<String>> data = [["One", "Two"], ["One", "Two"]];

  @override
  State<UpcomingMenu> createState() => _UpcomingMenuState();
}

class _UpcomingMenuState extends State<UpcomingMenu> {
  @override
  Widget build(BuildContext context) {
    const double margins = 16.0;
    List<List<String>> data = UpcomingMenu.data;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        prototypeItem: Column(),
        itemBuilder: (context, index) {
          return Column(
            children: data[index]
              .map((i) {
                return FixedWidthMenuItem(content: i);
              }).toList(),
          );
        },
      ),
    );
  }
}

class FixedWidthMenuItem extends StatefulWidget {
  const FixedWidthMenuItem({super.key, required this.content});

  final String content;

  @override
  State<FixedWidthMenuItem> createState() => _FixedWidthMenuItemState();
}

class _FixedWidthMenuItemState extends State<FixedWidthMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 200.0,
        child: MenuItem(content: widget.content, type: "Food", enabled: false),
      ),
    );
  }
}
