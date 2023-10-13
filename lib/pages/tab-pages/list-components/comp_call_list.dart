import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_ui_clone/constant/colors.dart';
import 'package:whatsapp_ui_clone/models/calls_model.dart';

class CustomCallList extends StatelessWidget {
  const CustomCallList(
      {super.key, required this.model, this.onTap, required this.type});
  final CallModel model;
  final String type;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                model.callImagePath,
                height: 50,
                width: 50,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${model.callName} ',
                        style: TextStyle(
                          color: type == 'received.svg'
                              ? wpRed
                              : (type == 'made.svg')
                                  ? wpTextColor
                                  : null,
                          fontSize: 17,
                        ),
                      ),
                      model.callTimes > 1
                          ? Text(
                              '(${model.callTimes.toString()})',
                              style: TextStyle(
                                color: type == 'received.svg'
                                    ? wpRed
                                    : (type == 'made.svg')
                                        ? wpTextColor
                                        : null,
                                fontSize: 17,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        model.callMadeOrReceivedPath,
                        color: type == 'received.svg'
                            ? wpRed
                            : (type == 'made.svg')
                                ? wpTealGreen
                                : null,
                        height: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        model.callDate,
                        style: TextStyle(
                          color: wpTextColor2,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SvgPicture.asset(
              model.callTypePath,
              color: wpTealGreen,
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
