import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,this.onPressed,required this.icon, required this.title});

  final void Function()? onPressed;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.lightGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    color:AppColor.black,
                    fontWeight: .bold,
                    fontSize: 15
                ),
              ),
              Spacer(),
              Icon(icon,size: 30.dg,color: AppColor.black,)
            ],
          )
      ),
    );
  }
}
