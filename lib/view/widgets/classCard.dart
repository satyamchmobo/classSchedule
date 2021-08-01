import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_task/view/constants/colors.dart';

Widget classCard({
  required Color cardBgColor,
  required Color classNameColor,
  required String classname,
  required String classtype,
  bool isSelected = false,
}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
    child: Container(
      width: 270,
      height: 105,
      decoration: BoxDecoration(
        boxShadow: [
          //background color of box
          BoxShadow(
            color: isSelected ? classNameColor.withOpacity(0.7) : Colors.white,
            blurRadius: 3.0, // soften the shadow
            spreadRadius: 0.1, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              2.0,
              // Move to bottom 10 Vertically
            ),
          )
        ],
        color: cardBgColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          classname,
                          style: Get.textTheme.bodyText1!.copyWith(
                            fontFamily: 'Poppins',
                            color: Color(0xFF94939A),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          '12 am - 14 pm',
                          style: Get.textTheme.bodyText1!.copyWith(
                            fontFamily: 'Poppins',
                            color: classNameColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0.25, 0),
                      child: Stack(
                        alignment: Alignment(0.050000000000000044, 0),
                        children: [
                          Align(
                            alignment: Alignment(-1, -0.05),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Container(
                                width: 20,
                                height: 20,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/NVUU6421.JPEG',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(-1, -0.05),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                              child: Container(
                                width: 25,
                                height: 25,
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
                          ),
                          Align(
                            alignment: Alignment(-1, -0.05),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(100, 0, 10, 0),
                              child: Container(
                                width: 30,
                                height: 30,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/IMG_20210516_204851.jpg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        '+5 members',
                        style: Get.textTheme.bodyText1!.copyWith(
                          fontFamily: 'Poppins',
                          color: Color(0xFF94939A),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Text(
              classtype,
              style: Get.textTheme.bodyText1!.copyWith(
                fontFamily: 'Poppins',
                color: classNameColor,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
