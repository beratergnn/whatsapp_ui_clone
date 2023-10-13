import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/constant/colors.dart';

class GroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: wpScaffoldBackGroundColor,
        body: Center(
          child: Text(
            'Groups Page',
            style: TextStyle(
              color: wpTextColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
