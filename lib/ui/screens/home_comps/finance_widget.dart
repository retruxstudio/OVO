import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';

class FinanceWidget extends StatefulWidget {
  const FinanceWidget({Key? key}) : super(key: key);

  @override
  _FinanceWidgetState createState() => _FinanceWidgetState();
}

class _FinanceWidgetState extends State<FinanceWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 242.h,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                left: 15.w, right: 15.w, top: 11.w, bottom: 11.w),
            child: AutoSizeText(
              'Finansial Kamu',
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'Eina01',
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
                color: heading,
                shadows: [
                  Shadow(
                    color: heading,
                    offset: const Offset(0.13, 0.13),
                  ),
                  Shadow(
                    color: heading,
                    offset: const Offset(-0.13, -0.13),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 15.w, right: 15.w, bottom: 15.w, top: 6.w),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      offset: const Offset(0, 0),
                      blurRadius: 7,
                      // spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 105.h,
                      width: width,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/finansial.png'),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.w),
                          topRight: Radius.circular(8.w),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 2.h,
                      width: width,
                      color: Colors.black.withOpacity(0.04),
                    ),
                    Container(
                      height: 72.h,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.w),
                          bottomRight: Radius.circular(8.w),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.w),
                            bottomRight: Radius.circular(8.w),
                          ),
                          color: Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        "Saatnya kamu mulai investasi dengan yang aman dan pasti.",
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontFamily: 'SFPro',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: -0.4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 32.h,
                              width: 92.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: purple.withBlue(185),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AutoSizeText(
                                    "Mulai",
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'SFPro',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: -0.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
