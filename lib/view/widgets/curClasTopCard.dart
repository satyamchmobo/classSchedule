import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_task/view/constants/colors.dart';

Widget curClasTopCard() {
  return Padding(
    padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
    child: Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color:appPrimaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: Container(
                  width: 200,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF9A7A),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          'History  Of  Physics',
                          style: Get.textTheme.bodyText1!.copyWith(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          '24 March, 18 pm - 19 pm',
                          style: Get.textTheme.bodyText1!.copyWith(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 23, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Container(
                                width: 42,
                                height: 42,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/photo.jpeg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'History  Of  Physics',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  'Proffesor',
                                  style: Get.textTheme.bodyText1!.copyWith(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 26,
            ),
          )
        ],
      ),
    ),
  );
}
