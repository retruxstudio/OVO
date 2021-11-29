import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:ovo/ui/screens/home_comps/home_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';

class InterstWidget extends StatefulWidget {
  const InterstWidget({Key? key}) : super(key: key);

  @override
  _InterstWidgetState createState() => _InterstWidgetState();
}

class _InterstWidgetState extends State<InterstWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 548.h,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                left: 15.w, right: 15.w, top: 22.w, bottom: 8.w),
            child: AutoSizeText(
              'Yang Menarik di OVO',
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
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15.w, right: 15.w),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          "Jangan ngaku update kalau belum cobain fitur ini",
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
            ],
          ),
          Container(
            width: width,
            height: 233.h,
            color: Colors.transparent,
            padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w),
            child: Row(
              children: [
                Container(
                  height: 210.h,
                  width: 185.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
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
                        height: 80.h,
                        width: 185.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ym2.png"),
                          ),
                        ),
                      ),
                      Container(
                        height: 75.h,
                        width: 185.w,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, top: 10.h),
                                  child: Container(
                                    width: 138.w,
                                    child: AutoSizeText(
                                      'Pusat Bantuan',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Eina01',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              "Punya kendala atau pertanyaan terkait OVO? Kamu bisa kirim di sini",
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 185.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              AutoSizeText(
                                "Lihat Bantuan",
                                maxLines: 2,
                                style: TextStyle(
                                  color: link,
                                  fontFamily: 'Eina01',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.4,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 210.h,
                  width: 185.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
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
                        height: 80.h,
                        width: 185.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ym4.png"),
                          ),
                        ),
                      ),
                      Container(
                        height: 75.h,
                        width: 185.w,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, top: 10.h),
                                  child: Container(
                                    width: 138.w,
                                    child: AutoSizeText(
                                      'Promo Voucher Favorit',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Eina01',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              "Yuk cek berbagai promo menarik di aplikasi OVO sekarang!",
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 185.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              AutoSizeText(
                                "Cek di sini!",
                                maxLines: 2,
                                style: TextStyle(
                                  color: link,
                                  fontFamily: 'Eina01',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.4,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 233.h,
            color: Colors.transparent,
            padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
            child: Row(
              children: [
                Container(
                  height: 210.h,
                  width: 185.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
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
                        height: 80.h,
                        width: 185.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ym.png"),
                          ),
                        ),
                      ),
                      Container(
                        height: 75.h,
                        width: 185.w,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, top: 10.h),
                                  child: Container(
                                    width: 138.w,
                                    child: AutoSizeText(
                                      'Cerdas Finansial',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Eina01',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              "Yuk melek finansial bersama OVO",
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 185.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              AutoSizeText(
                                "Klik di sini!",
                                maxLines: 2,
                                style: TextStyle(
                                  color: link,
                                  fontFamily: 'Eina01',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.4,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 210.h,
                  width: 185.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
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
                        height: 80.h,
                        width: 185.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/ym3.png"),
                          ),
                        ),
                      ),
                      Container(
                        height: 75.h,
                        width: 185.w,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, top: 10.h),
                                  child: Container(
                                    width: 138.w,
                                    child: AutoSizeText(
                                      'Tips Keuangan',
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Eina01',
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.4,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.w),
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              "Cara mengatur keuangan setelah gajian",
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 185.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            children: [
                              Spacer(),
                              AutoSizeText(
                                "Cari Tahu Disini",
                                maxLines: 2,
                                style: TextStyle(
                                  color: link,
                                  fontFamily: 'Eina01',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: -0.4,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
