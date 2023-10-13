import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.path,
      required this.title,
      this.subtitle,
      this.onTap});
  final String path;
  final String title;
  final String? subtitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/${path}',
            height: 28,
            color: wpTextColor2.withOpacity(0.5),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: wpTextColor, fontSize: 16),
              ),
              subtitle != null
                  ? Container(
                      width: 300,
                      child: Text(
                        subtitle!,
                        style: TextStyle(color: wpTextColor2, fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
