import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/utils/app_route.dart';
import 'package:cars/core/utils/language_cubit.dart';
import 'package:cars/core/widgets/double_text.dart';
import 'package:cars/core/widgets/tools_card.dart';
import 'package:cars/features/ui/more/custom_preferences.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

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
                    largeText: AppLocalizations.of(context)!.more,
                    smallText: AppLocalizations.of(context)!.everythingYouNeedForASmarterCarJourney
                )
            ),
            SliverToBoxAdapter(
              child : Column(
                spacing: 20.w,
                crossAxisAlignment: .start,
                children: [
                  SizedBox(),
                  ToolsCard(
                    title: AppLocalizations.of(context)!.yourDriveWiseAccount,
                    subTitle: AppLocalizations.of(context)!.manageYourProfileAndPreferences,
                    icon: Icons.person_outline,
                    isMorePage: true,
                  ),
                  DoubleText(
                    largeText: AppLocalizations.of(context)!.yourTools,
                    smallText: AppLocalizations.of(context)!.helpfulFeaturesForEveryCarOwner,
                    largeTextSize: 18,
                  ),
                  ToolsCard(
                    icon: Icons.list,
                    title: AppLocalizations.of(context)!.compareCars,
                    subTitle: AppLocalizations.of(context)!.findYourBestMatch,
                    isMorePage: true,
                  ),
                  ToolsCard(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoute.carInspectionScreen);
                    },
                    icon: Icons.verified_user_outlined,
                    title: AppLocalizations.of(context)!.carInspection,
                    subTitle: AppLocalizations.of(context)!.buyWithConfidence,
                    isMorePage: true,
                  ),
                  ToolsCard(
                    icon: Icons.settings,
                    title: AppLocalizations.of(context)!.carProblems,
                    subTitle: AppLocalizations.of(context)!.identifyYourCarsProblems,
                    isMorePage: true,
                  ),
                  Text(
                    AppLocalizations.of(context)!.preferences,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: .bold,
                      color:AppColor.white
                    ),
                  ),
                  CustomPreferences(
                    icon: Icons.notifications_outlined,
                    title: AppLocalizations.of(context)!.notification,
                    dropdownButton: DropdownButton<String>(
                      value: 'on',
                      underline: const SizedBox(),
                      style: TextStyle(
                        color: AppColor.lightGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'on',
                          child: Text(AppLocalizations.of(context)!.on),
                        ),
                        DropdownMenuItem(
                          value: 'off',
                          child: Text(AppLocalizations.of(context)!.off),
                        ),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          return;
                        }
                      },
                    ),
                  ),
                  CustomPreferences(
                    icon: Icons.language_outlined,
                    title: AppLocalizations.of(context)!.language,
                    dropdownButton: DropdownButton<String>(
                      style: TextStyle(
                        color: AppColor.lightGrey,
                        fontWeight: .bold,
                        fontSize: 14,
                      ),
                      value: LanguageCubit().selectedLanguage,
                      items: [
                        DropdownMenuItem(
                          value: 'system',
                          child: Text(
                            AppLocalizations.of(context)!.systemLanguage,
                            style: TextStyle(
                              color: AppColor.lightGrey,
                              fontWeight: .bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'ar',
                          child: Text(
                            'العربية',
                            style: TextStyle(
                              color: AppColor.lightGrey,
                              fontWeight: .bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'en',
                          child: Text(
                            'English',
                            style: TextStyle(
                              color: AppColor.lightGrey,
                              fontWeight: .bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          context.read<LanguageCubit>().changeLanguage(
                            value == 'system' ? null : value,
                          );
                        }
                      },
                    ),),
                  Text(
                    AppLocalizations.of(context)!.support,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: .bold,
                        color:AppColor.white
                    ),
                  ),
              InkWell(
                onTap: (){
                  // todo: اشوف هعمل صفحة معلومات و تواصل ازاي
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: AppColor.lightGrey,
                    ),
                    SizedBox(width: 20.w,),
                    Text(
                      AppLocalizations.of(context)!.about,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: .bold,
                          color:AppColor.white
                      ),
                    ),
                    SizedBox(width: 80.w,),
                  ],),
              ),
                  SizedBox(width: 20.h,),
                ],
              ),
            ),
          ]
      ),
    );
  }
}


