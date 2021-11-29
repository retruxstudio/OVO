import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ovo/constants/color.dart';
import 'package:ovo/main.dart';
import 'package:ovo/ui/screens/scanner/scan_animation.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> with WidgetsBindingObserver {
  CameraController? controller;
  bool _isCameraInitialized = false;

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;
    // Instantiating the camera controller
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    // Dispose the previous controller
    await previousCameraController?.dispose();

    // Replace with the new controller
    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }

    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    // Initialize controller
    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }

    // Update the boolean
    if (mounted) {
      setState(() {
        _isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  @override
  void initState() {
    onNewCameraSelected(cameras[0]);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      // Free up memory when camera not active
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      // Reinitialize the camera with same properties
      onNewCameraSelected(cameraController.description);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final mediaSize = MediaQuery.of(context).size;
    final scale = 1 / (controller!.value.aspectRatio * mediaSize.aspectRatio);

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              child: ClipRect(
                clipper: _MediaSizeClipper(mediaSize),
                child: Transform.scale(
                  scale: scale,
                  alignment: Alignment.topCenter,
                  child: CameraPreview(controller!),
                ),
              ),
            ),
            ScannerAnim(),
            Container(
              height: height,
              child: Column(
                children: [
                  SizedBox(
                    height: 44.h,
                  ),
                  Container(
                    width: width,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: AutoSizeText(
                            'Scan untuk membayar',
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontFamily: 'Eina01',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          child: ImageIcon(
                              AssetImage("assets/icons/flashoff.png"),
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: width,
                    height: 60.h,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(14.w),
                          child: Container(
                            child: const Image(
                              image: AssetImage("assets/icons/qrissup.png"),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(14.w),
                          child: Container(
                            child: const Image(
                              image: AssetImage("assets/icons/photo.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 160.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 15.h, left: 17.w, right: 17.w, bottom: 15.h),
                          width: width,
                          child: AutoSizeText(
                            'Bisa juga pakai',
                            maxLines: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Eina01',
                                fontSize: 18.sp,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 17.w,
                            ),
                            Expanded(
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.2, color: grey.withOpacity(0.8)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Container(
                                        child: const Image(
                                          image: AssetImage(
                                            "assets/icons/phone.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        'Nomor HP',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontFamily: 'Eina01',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                          color: heading,
                                          shadows: [
                                            Shadow(
                                              color: heading,
                                              offset: const Offset(0.13, 0.13),
                                            ),
                                            Shadow(
                                              color: heading,
                                              offset:
                                                  const Offset(-0.13, -0.13),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Expanded(
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.2, color: grey.withOpacity(0.8)),
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: Container(
                                        child: const Image(
                                          image: AssetImage(
                                            "assets/icons/barcode.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Container(
                                      child: AutoSizeText(
                                        'Loyalty Code',
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontFamily: 'Eina01',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15.sp,
                                          color: heading,
                                          shadows: [
                                            Shadow(
                                              color: heading,
                                              offset: const Offset(0.13, 0.13),
                                            ),
                                            Shadow(
                                              color: heading,
                                              offset:
                                                  const Offset(-0.13, -0.13),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: width,
                          height: 28.h,
                          color: greyBg,
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                child: AutoSizeText(
                                  'Scan tiket parkir bermasalah? ',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: black,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: -0.4,
                                  ),
                                ),
                              ),
                              Container(
                                child: AutoSizeText(
                                  'Input manual',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: link,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.4,
                                  ),
                                ),
                              ),
                              Spacer(),
                            ],
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
      ),
    );
  }
}

class _MediaSizeClipper extends CustomClipper<Rect> {
  final Size mediaSize;
  const _MediaSizeClipper(this.mediaSize);
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, mediaSize.width, mediaSize.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
