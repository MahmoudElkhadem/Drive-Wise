import 'package:cars/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomPreferences extends StatelessWidget {
  const CustomPreferences({
    super.key,
    required this.icon,
    required this.title,
    required this.dropdownButton});


  final IconData icon;
  final String title;
  final DropdownButton<String>? dropdownButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColor.lightGrey,
        ),
        SizedBox(width: 20.w,),
        Text(
          title,
          style: TextStyle(
              fontSize: 14,
              fontWeight: .bold,
              color:AppColor.white
          ),
        ),
        SizedBox(width: 80.w,),
        dropdownButton!
      ],
    );
  }
}
