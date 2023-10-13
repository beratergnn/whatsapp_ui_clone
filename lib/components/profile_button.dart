import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton(
      {super.key, required this.path, required this.text, this.onTap});

  final String path;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/${path}',
            height: 30,
            color: wpTealGreen,
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(color: wpTealGreen),
          )
        ],
      ),
    );
  }
}
