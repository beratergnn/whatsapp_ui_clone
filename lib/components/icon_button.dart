import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.iconPath, this.onPressed});
  final String iconPath;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        'assets/icons/${iconPath}',
        height: 26,
        color: wpTextColor,
      ),
    );
  }
}
