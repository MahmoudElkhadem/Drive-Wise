import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/widgets/custom_elevated_button.dart';
import 'package:cars/core/widgets/double_text.dart';
import 'package:cars/features/ui/inspection/custom_inspection_widget.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CarInspection extends StatelessWidget {
  const CarInspection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppColor.black,
        title: DoubleText(
            largeText: AppLocalizations.of(context)!.carInspection,
            smallText: AppLocalizations.of(context)!.smarterWayToCheckUsedCar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          spacing: 20.h,
          crossAxisAlignment: .start,
          children: [
            SizedBox(),

            DoubleText(
              largeText: AppLocalizations.of(context)!.inspectionChecklist,
              smallText: AppLocalizations.of(context)!.workThroughTheseKeyAreasWhenViewingCar,
              largeTextSize: 15,
            ),

            CustomInspectionWidget(
                num: '01',
                title: AppLocalizations.of(context)!.exteriorInspection,
                subtitle: AppLocalizations.of(context)!.bodyPanels
            ),

            CustomInspectionWidget(
                num: '02',
                title: AppLocalizations.of(context)!.interiorInspection,
                subtitle: AppLocalizations.of(context)!.seatsDashboardAndElectronics
            ),

            CustomInspectionWidget(
                num: '03',
                title: AppLocalizations.of(context)!.engineMechanical,
                subtitle: AppLocalizations.of(context)!.engineTransmission
            ),

            CustomInspectionWidget(
                num: '04',
                title: AppLocalizations.of(context)!.chassisInspection,
                subtitle: AppLocalizations.of(context)!.chassisPillarsUnderbody
            ),

            CustomInspectionWidget(
                num: '05',
                title: AppLocalizations.of(context)!.documentsCheck,
                subtitle: AppLocalizations.of(context)!.licenseVIN
            ),

            SizedBox(),

            CustomElevatedButton(
                onPressed: () {},
                icon: Icons.chevron_right,
                title: AppLocalizations.of(context)!.startInspectionChecklist
            ),

            Text(
              AppLocalizations.of(context)!.visualChecklistIsHelpful,
              style: TextStyle(
                fontSize: 10,
                color: AppColor.lightGrey
              ),
            )
          ]
        )
      )
    );
  }
}
