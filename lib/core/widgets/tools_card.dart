import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ToolsCard extends StatelessWidget {
  const ToolsCard({super.key, required this.title, required this.subTitle, this.icon,this.isMorePage = false, this.onTap});


  final String title;
  final String subTitle;
  final IconData? icon;
  final bool isMorePage;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
          spacing: 15.w,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 34.w,
              height: 34.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.darkGrey
              ),
              child: Icon(icon,color: AppColor.lightGreen,),
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
                  subTitle,
                  style: TextStyle(
                      color: AppColor.lightGrey,
                      fontSize: 12,
                      fontWeight: .bold
                  ),
                )
              ],
            ),
            isMorePage
                ?
            Expanded(
              child: Row(
                mainAxisAlignment: .end,
                children: [
                  Icon(
                    Icons.chevron_right,
                    color: AppColor.white,
                    size: 18.dg,
                  ),
                ],
              ),
            )
                :
            SizedBox()
          ],
        ),
      ),
    );
  }
}
