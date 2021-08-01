import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget customAppBar() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 32,
      right: 32,
      top: 25,
      bottom: 25,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFFF9F2F2),
              width: 1,
            ),
          ),
          child: Align(
            alignment: Alignment(0, 0),
            child: Icon(
              Icons.menu_open,
              color: Color(0xFF4B4B4B),
              size: 18,
            ),
          ),
        ),
        Text(
          'Today\'s Classes ',
          style: Get.textTheme.bodyText1!.copyWith(
            fontFamily: 'Poppins',
            color: Color(0xFF4B4B4B),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFFF9F2F2),
              width: 1,
            ),
          ),
          child: Align(
            alignment: Alignment(0, 0),
            child: Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF4B4B4B),
              size: 18,
            ),
          ),
        )
      ],
    ),
  );
}
