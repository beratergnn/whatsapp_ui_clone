import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';

class NotInfoContainer extends StatelessWidget {
  const NotInfoContainer(
      {super.key,
      required this.selectedTab,
      required this.notCount,
      required this.defTab});
  final int selectedTab;
  final int defTab;
  final String notCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        color: selectedTab == defTab ? wpTealGreen : wpTextColor2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          notCount,
          style: TextStyle(
            color: wpAppBarBackGroundColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
