import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/utils/app_route.dart';
import 'package:cars/core/widgets/car_card.dart';
import 'package:cars/core/widgets/custom_app_bar.dart';
import 'package:cars/core/widgets/custom_text_field.dart';
import 'package:cars/core/widgets/discover_card.dart';
import 'package:cars/core/widgets/double_text.dart';
import 'package:cars/core/widgets/tools_card.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomHomeBody extends StatelessWidget {
  const CustomHomeBody({super.key});

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
            title: CustomAppBar()
          ),
          SliverToBoxAdapter(
            child : Column(
            spacing: 20.w,
            crossAxisAlignment: .start,
            children: [
              SizedBox(),
              DoubleText(
                  largeText: AppLocalizations.of(context)!.findTheRightCar,
                  smallText :AppLocalizations.of(context)!.makeEveryDriveASmarterDecision
              ),
              CustomSearchField(),
              DiscoverCard(),
              DoubleText(
                  largeText: AppLocalizations.of(context)!.exploreDriveWise,
                  smallText: AppLocalizations.of(context)!.everythingYouNeedBeforeYouBuy
              ),
              SizedBox(
                height: 83.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ToolsCard(
                      icon: Icons.list,
                      title: AppLocalizations.of(context)!.compareCars,
                      subTitle: AppLocalizations.of(context)!.findYourBestMatch,
                    ),
                    SizedBox(width: 10.w,),
                    ToolsCard(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoute.carInspectionScreen);
                      },
                      icon: Icons.verified_user_outlined,
                      title: AppLocalizations.of(context)!.carInspection,
                      subTitle: AppLocalizations.of(context)!.buyWithConfidence,
                    ),
                    SizedBox(width: 10.w,),
                    ToolsCard(
                      icon: Icons.settings,
                      title: AppLocalizations.of(context)!.carProblems,
                      subTitle: AppLocalizations.of(context)!.identifyYourCarsProblems,
                    ),
                  ],
                ),
              ),
              DoubleText(
                  largeText: AppLocalizations.of(context)!.recommendedForYou,
                  smallText: AppLocalizations.of(context)!.handpickedOptionsWorthACloserLook
              ),
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
