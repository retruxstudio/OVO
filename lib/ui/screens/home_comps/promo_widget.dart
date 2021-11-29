import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:ovo/model/banner.dart';
import 'package:ovo/ui/screens/home_comps/home_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PromoWidget extends StatefulWidget {
  const PromoWidget({Key? key}) : super(key: key);

  @override
  _PromoWidgetState createState() => _PromoWidgetState();
}

class _PromoWidgetState extends State<PromoWidget> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: 238.h,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: AutoSizeText(
                    'Info dan Promo Spesial',
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
                Container(
                  child: AutoSizeText(
                    'Lihat Semua',
                    maxLines: 1,
                    style: TextStyle(
                        color: link,
                        fontSize: 12.sp,
                        fontFamily: 'Eina01',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: width,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 142.h,
                // aspectRatio: 16 / 5.4,
                viewportFraction: 0.93,
                autoPlay: true,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(milliseconds: 300),
                autoPlayInterval: Duration(milliseconds: 4250),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: PromoBanner.promoBanners.length,
              itemBuilder: (context, index, realIndex) {
                return buildImage(index);
              },
            ),
          ),
          SizedBox(
            height: 13.h,
          ),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PromoBanner.promoBanners[index].imgPath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(9.5.r),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: PromoBanner.promoBanners.length,
        duration: const Duration(microseconds: 0),
        effect: ExpandingDotsEffect(
          expansionFactor: 2.2,
          radius: 10.r,
          dotWidth: 6.w,
          dotHeight: 6.h,
          spacing: 4.w,
          activeDotColor: link,
          dotColor: grey,
        ),
      );
}
