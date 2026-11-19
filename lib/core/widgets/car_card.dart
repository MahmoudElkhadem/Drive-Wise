import 'package:cars/core/utils/app_color.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 151.h,
      padding: EdgeInsets.symmetric(
          horizontal: 10.w
      ),
      decoration: BoxDecoration(
        color: AppColor.darkGreen,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        spacing: 20.w,
        children: [
          Container(
            width: 124.w,
            height: 129.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.mediumGreen,
            ),
            child: Image.asset(
              'assets/images/toyota.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: .spaceEvenly,
            children: [
              Text(
                'Toyota Corolla',
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              Row(
                spacing: 10.w,
                children: [
                  Text(
                    '2024',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColor.lightGrey
                    ),),
                  Text(
                    '.',
                    style: TextStyle(
                      fontWeight: .bold,
                      fontSize: 18,
                      color: AppColor.lightGrey,
                    ),),
                  Text(
                    'sedan',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColor.lightGrey
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: (){

                  }, child: Text(
                AppLocalizations.of(context)!.exploreModel,
                style: TextStyle(
                    color: AppColor.lightGreen,
                    fontSize: 14,
                    fontWeight: .bold
                ),
              ))
            ],
          ),
          CircleAvatar(
              backgroundColor: AppColor.lightGrey,
              child: IconButton(
                  onPressed: (){

                  },
                  icon:Icon(
                    Icons.favorite_border,
                    color: AppColor.white,
                  )))
        ],
      ),
    );
  }
}
