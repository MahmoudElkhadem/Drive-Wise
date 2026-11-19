import 'package:cars/core/utils/app_color.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColor.lightGreen,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search,color: AppColor.lightGrey,size: 23.dg,),
        hintText: AppLocalizations.of(context)!.searchMakeModel,
        hintStyle: TextStyle(
          color: AppColor.lightGrey,
          fontSize: 14,
        ),
        suffixIcon: IconButton(
          onPressed: (){
            // todo: go to filter list of car search
          },
          icon: Icon(Icons.filter_list_outlined),
          color: AppColor.lightGreen,
        ),
        disabledBorder: _border,
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: AppColor.red,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: AppColor.red,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor: AppColor.darkGrey,
        filled: true,
      ),
    );
  }
}

OutlineInputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: AppColor.lightGrey,
      width: 1,
    )
);