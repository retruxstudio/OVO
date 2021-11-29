import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:ovo/ui/screens/home_comps/home_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 16.w,
                ),
                width: width,
                height: 122.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/hero.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment(0, 0.58),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        'OVO Cash',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: headingSmall,
                          fontFamily: 'Eina01',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: AutoSizeText(
                                  'Rp',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontFamily: 'Eina01',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: AutoSizeText(
                                  '1.111.567.880',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 25.sp,
                                    color: Colors.white,
                                    fontFamily: 'Eina01',
                                    fontWeight: FontWeight.w700,
                                    shadows: const [
                                      Shadow(
                                        color: Colors.white,
                                        offset: Offset(0.2, 0.2),
                                      ),
                                      Shadow(
                                        color: Colors.white,
                                        offset: Offset(-0.2, -0.2),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: AutoSizeText(
                              'OVO Points',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: headingSmall,
                                fontFamily: 'Eina01',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            child: AutoSizeText(
                              '960',
                              maxLines: 1,
                              style: TextStyle(
                                color: gold,
                                fontSize: 12.sp,
                                fontFamily: 'Eina01',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //gridview
              Container(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
                color: Colors.white,
                width: width,
                height: 226.h,
                child: GridView.count(
                  crossAxisCount: 4,
                  childAspectRatio: 3 / 2.57,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/pln.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'PLN',
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/pulsa.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Pulsa',
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/paketdata.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Paket data',
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/invest.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Invest',
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/icons/angsurankredit.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Angsuran Kredit',
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/icons/internettvkabel.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Internet & TV Kabel',
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/proteksi.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Proteksi',
                          softWrap: false,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icons/lainnya.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        AutoSizeText(
                          'Lainnya',
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.4,
                            fontSize: 12.sp,
                            color: Color(0xffb444444),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //floating bar
          Positioned(
            top: 87.h,
            child: Container(
              width: width,
              child: Row(
                children: [
                  SizedBox(
                    width: 17.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 69.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(-1, 1),
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40.w,
                          ),
                          Container(
                            width: 50.w,
                            child: Column(
                              children: [
                                Spacer(),
                                Container(
                                  width: 24.w,
                                  height: 24.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/topup.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Container(
                                  child: AutoSizeText(
                                    'Top Up',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: purple,
                                      letterSpacing: -0.3,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50.w,
                            child: Column(
                              children: [
                                Spacer(),
                                Container(
                                  width: 24.w,
                                  height: 24.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/transfer.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Container(
                                  child: AutoSizeText(
                                    'Transfer',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: purple,
                                      letterSpacing: -0.3,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 50.w,
                            child: Column(
                              children: [
                                Spacer(),
                                Container(
                                  width: 24.w,
                                  height: 24.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/history.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Container(
                                  child: AutoSizeText(
                                    'History',
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      color: purple,
                                      letterSpacing: -0.3,
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
