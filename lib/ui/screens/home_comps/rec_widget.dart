import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RecWidget extends StatefulWidget {
  const RecWidget({Key? key}) : super(key: key);

  @override
  _RecWidgetState createState() => _RecWidgetState();
}

class _RecWidgetState extends State<RecWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 281.h,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 22.w),
            child: AutoSizeText(
              'Rekomendasi Pilihan',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Eina01',
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
                color: heading,
                shadows: [
                  Shadow(
                    color: heading,
                    offset: Offset(0.13, 0.13),
                  ),
                  Shadow(
                    color: heading,
                    offset: Offset(-0.13, -0.13),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16.w, top: 0.h),
                    width: 168.w,
                    height: 200.h,
                    child: Column(
                      children: [
                        Container(
                          width: 168.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/rp1.png')),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 168.w,
                          child: AutoSizeText(
                            'Asuransi • Kesehatan',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'SFPro',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 138.w,
                              child: AutoSizeText(
                                'Asuransi Syariah Manfaat Lengkap',
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Eina01',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 12.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image:
                                        AssetImage("assets/images/prudent.png"),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.w, top: 0.h),
                    width: 168.w,
                    height: 200.h,
                    child: Column(
                      children: [
                        Container(
                          width: 168.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/rp3.png')),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 168.w,
                          child: AutoSizeText(
                            'Asuransi • Mobil',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'SFPro',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 138.w,
                              child: AutoSizeText(
                                'Asuransi Mobil Sejahtera',
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Eina01',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 12.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image: AssetImage(
                                        "assets/images/futuready.png"),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.w, top: 0.h),
                    width: 168.w,
                    height: 200.h,
                    child: Column(
                      children: [
                        Container(
                          width: 168.w,
                          height: 110.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/rp2.png')),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 168.w,
                          child: AutoSizeText(
                            'Asuransi • Kesehatan',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'SFPro',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 138.w,
                              child: AutoSizeText(
                                'PRUTect Care',
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Eina01',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 12.h,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image:
                                        AssetImage("assets/images/prudent.png"),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
