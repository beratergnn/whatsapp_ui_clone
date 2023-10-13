import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: wpTextColor));
  }
}
