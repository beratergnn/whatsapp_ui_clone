import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class CustomMyStory extends StatelessWidget {
  const CustomMyStory(
      {super.key, required this.imagePath, required this.text, this.addTap});
  final String imagePath;
  final String text;
  final Function()? addTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: addTap,
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 39.5,
                backgroundImage: AssetImage(
                  'assets/images/${imagePath}',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    color: wpTealGreen,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: wpScaffoldBackGroundColor,
                      width: 3,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/ic_plus.svg',
                    color: wpTextColor,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: wpTextColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
