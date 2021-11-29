import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';

enum AniProps { x, op, op2, op3 }

class ScannerAnim extends StatelessWidget {
  const ScannerAnim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final _tween = TimelineTween<AniProps>()
      ..addScene(
              begin: Duration.zero,
              duration: const Duration(milliseconds: 2000))
          .animate(AniProps.x, tween: Tween(begin: 0.0.h, end: 0.0.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op3, tween: Tween(begin: 0.0, end: 0.0))
      ..addScene(
              begin: const Duration(milliseconds: 2000),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.0.h, end: 0.25.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 1.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op3, tween: Tween(begin: 0.0, end: 1.0))
      ..addScene(
              begin: const Duration(milliseconds: 2250),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.25.h, end: 0.5.h))
          .animate(AniProps.op, tween: Tween(begin: 1.0, end: 1.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 0.0))
      ..addScene(
              begin: const Duration(milliseconds: 2500),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.5.h, end: 0.75.h))
          .animate(AniProps.op, tween: Tween(begin: 1.0, end: 1.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 0.0))
      ..addScene(
              begin: const Duration(milliseconds: 2750),
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut)
          .animate(AniProps.x, tween: Tween(begin: 0.75.h, end: 1.0.h))
          .animate(AniProps.op, tween: Tween(begin: 1.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 0.0))
      ..addScene(
              begin: const Duration(milliseconds: 3000),
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn)
          .animate(AniProps.x, tween: Tween(begin: 1.0.h, end: 0.75.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 0.0, end: 1.0))
      ..addScene(
              begin: const Duration(milliseconds: 3250),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.75.h, end: 0.5.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 1.0, end: 1.0))
      ..addScene(
              begin: const Duration(milliseconds: 3500),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.5.h, end: 0.25.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 1.0, end: 1.0))
      ..addScene(
              begin: const Duration(milliseconds: 3750),
              duration: const Duration(milliseconds: 250))
          .animate(AniProps.x, tween: Tween(begin: 0.25.h, end: 0.0.h))
          .animate(AniProps.op, tween: Tween(begin: 0.0, end: 0.0))
          .animate(AniProps.op2, tween: Tween(begin: 1.0, end: 0.0));

    return LoopAnimation<TimelineValue<AniProps>>(
      tween: _tween,
      fps: 60,
      duration: _tween.duration,
      builder: (context, child, value) {
        return Transform.translate(
          offset:
              Offset(0.0, (value.get(AniProps.x) * (height - 120.h) - 120.h)),
          child: Column(
            children: [
              Opacity(
                opacity: value.get(AniProps.op),
                child: Container(
                  width: width,
                  height: 120.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [link.withOpacity(0.5), link.withOpacity(0.1)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: value.get(AniProps.op3),
                child: Container(
                  width: width,
                  height: 9.h,
                  decoration: BoxDecoration(
                    color: link,
                  ),
                ),
              ),
              Opacity(
                opacity: value.get(AniProps.op2),
                child: Container(
                  width: width,
                  height: 120.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [link.withOpacity(0.5), link.withOpacity(0.1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
