import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  final Icon icon;
  final String text;
  const RowComponent({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: icon,
          ),
          const TextSpan(text: "     "),
          TextSpan(
            text: text,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
