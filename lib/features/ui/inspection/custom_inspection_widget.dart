import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomInspectionWidget extends StatelessWidget {
  const CustomInspectionWidget({super.key, required this.num, required this.title, required this.subtitle});


  final String num;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 83.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColor.mediumGrey,
        border: Border.all(
          color: AppColor.lightGrey,
        ),
      ),
      child: Row(
        spacing: 30.w,
        children: [
          Container(
            width: 34.w,
            height: 34.w,
            alignment: .center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.darkGrey
            ),
            child: Text(
              num,
              style: TextStyle(
                  color: AppColor.lightGreen,
                  fontSize: 16,
                  fontWeight: .bold
              ),
            ),
          ),
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: 14,
                    fontWeight: .bold
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: AppColor.lightGrey,
                    fontSize: 12,
                    fontWeight: .bold
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
