import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/widgets/double_text.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DoubleText(
            largeText: 'DRIVE WISE',
            smallText: AppLocalizations.of(context)!.yourSmartCarCompanion,
            largeTextColor: AppColor.lightGreen,
            largeTextSize: 20,
          ),
          CircleAvatar(
            backgroundColor: AppColor.darkGrey,
            child: IconButton(
              icon:Icon(
                Icons.person_outline,
                color: AppColor.white,
              ),
              onPressed: () {

              },
            ),
          )
        ],
    );
  }
}
/*

 */
