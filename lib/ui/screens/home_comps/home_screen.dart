import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:ovo/ui/screens/home_comps/finance_widget.dart';
import 'package:ovo/ui/screens/home_comps/inters_widget.dart';
import 'package:ovo/ui/screens/home_comps/main_widget.dart';
import 'package:ovo/ui/screens/home_comps/promo_widget.dart';
import 'package:ovo/ui/screens/home_comps/rec_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: greyBg,
        child: Column(
          children: [
            //topbar, sticky
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              width: width,
              height: 85.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0, -0.82)),
              ),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 58.w,
                          height: 18.w,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/ovo.png'),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 72.w,
                          height: 29.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(4.w),
                                child: Container(
                                  child: const Image(
                                    image: AssetImage("assets/icons/prmo.png"),
                                  ),
                                ),
                              ),
                              Container(
                                child: AutoSizeText(
                                  "Promo",
                                  style: TextStyle(
                                    color: purple,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -0.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MainWidget(),
                      SizedBox(
                        height: 8.h,
                      ),
                      PromoWidget(),
                      SizedBox(
                        height: 8.h,
                      ),
                      RecWidget(),
                      SizedBox(
                        height: 8,
                      ),
                      FinanceWidget(),
                      SizedBox(
                        height: 8,
                      ),
                      InterstWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: Container(
          width: 58.w,
          height: 58.w,
          // color: Colors.white,
          child: FittedBox(
            child: FloatingActionButton(
              highlightElevation: 0,
              hoverElevation: 0,
              focusElevation: 0,
              elevation: 0,
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, '/scanscreen');
              },
              child: Container(
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color(0xffb6138DE).withOpacity(0.8),
                  //     Color(0xffb6138DE),
                  //   ],
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  // ),
                  image: DecorationImage(
                    image: AssetImage('assets/icons/qris.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.r),
                  // border: Border.all(
                  //   color: Colors.white,
                  //   width: 4.5.sp,
                  // ),
                ),
                width: 47.w,
                height: 47.w,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: width,
        height: 56.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, -1),
              blurRadius: 30,
            ),
          ],
          color: Colors.white,
        ),
        child: BottomNavigationBar(
          currentIndex: 0,
          elevation: 0,
          selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            height: 1.7,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            height: 1.7,
          ),
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: purple,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/home-1.png'),
              ),
              activeIcon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/home.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/finance-1.png'),
              ),
              activeIcon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/finance.png'),
              ),
              label: 'Finance',
            ),
            BottomNavigationBarItem(
              icon: Image(
                color: Colors.white,
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/home-1.png'),
              ),
              activeIcon: Image(
                color: Colors.white,
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/home.png'),
              ),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/inbox-1.png'),
              ),
              activeIcon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/inbox.png'),
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/profile-1.png'),
              ),
              activeIcon: Image(
                width: 22.w,
                height: 22.w,
                image: AssetImage('assets/icons/profile.png'),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
