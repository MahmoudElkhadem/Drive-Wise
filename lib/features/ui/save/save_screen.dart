import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/widgets/car_card.dart';
import 'package:cars/core/widgets/double_text.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SaveScreen extends StatelessWidget {
  const SaveScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
      ),
      child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverAppBar(
                scrolledUnderElevation: 0,
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: false,
                snap: false,
                backgroundColor: AppColor.black,
                title: DoubleText(
                    largeText: AppLocalizations.of(context)!.savedCars,
                    smallText: AppLocalizations.of(context)!.yourFavoriteCarsAllInOnePlace
                )
            ),
            SliverToBoxAdapter(
              child : Column(
                spacing: 20.w,
                crossAxisAlignment: .start,
                children: [
                  SizedBox(),
                  Align(
                    child: Text(
                      AppLocalizations.of(context)!.yourCollection,
                      style: TextStyle(
                        fontWeight: .bold,
                        color: AppColor.white,
                        fontSize: 18
                      )
                    ),
                  ),
                  CarCard(),
                  CarCard(),
                  CarCard(),
                  CarCard(),
                  CarCard(),
                  CarCard(),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
