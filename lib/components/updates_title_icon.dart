import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class CustomTitleAndIcon extends StatelessWidget {
  const CustomTitleAndIcon(
      {super.key, this.onTap, required this.iconPath, required this.title});
  final Function()? onTap;
  final String iconPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: wpTextColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset('assets/icons/${iconPath}',
              height: 25, color: wpTextColor2),
        ),
      ],
    );
  }
}
