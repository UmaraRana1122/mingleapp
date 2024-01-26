import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mingleapp/widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Boarding2Screen extends StatelessWidget {
  const Boarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/test.png"),
                    fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Spacer(),
                  Image.asset(
                    "assets/logo/milogo.png",
                    height: 9.h,
                  ),
                  textWidget("Find great venues. Meet new people.",
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    height: 30.h,
                  ),
                  textWidget(
                      "By tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookie Policy.",
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                  InkWell(
                    onTap: () {
                      // Get.to(() => LoginScreen());
                    },
                    child: Container(
                        height: 6.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/g.png",
                                height: 2.h,
                              ),
                              Spacer(),
                              textWidget("Sign in with Google",
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                              Spacer(),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => LoginScreen());
                    },
                    child: Container(
                        height: 6.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/fb.png",
                                height: 2.h,
                              ),
                              Spacer(),
                              textWidget("Sign in with Facebook",
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                              Spacer(),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Get.to(() => LoginScreen());
                    },
                    child: Container(
                        height: 6.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Icon(Icons.call),
                              Spacer(),
                              textWidget("Use Cell Phone Number",
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                              Spacer(),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  textWidget("Trouble Signing In?",
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
