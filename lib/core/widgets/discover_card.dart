import 'package:cars/core/utils/app_color.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 204.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF152118),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    AppLocalizations.of(context)!.driveBeyondOrdinary,
                    style: TextStyle(
                        color: AppColor.white,
                        fontSize: 22,
                        fontWeight: .bold
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.exploreCarsThatFitYourLifestyle,
                    style: TextStyle(
                      color: AppColor.lightGrey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                          // todo: go to discover car page , second tap : (index = 1)
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.lightGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.exploreCars,
                          style: TextStyle(
                            color:AppColor.black,
                            fontWeight: .bold,

                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/great car.png',
              height: 100.h,
              width: 180.w,
            ),
          ),
        ],
      ),
    );
  }
}
