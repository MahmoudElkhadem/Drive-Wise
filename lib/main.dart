import 'package:cars/core/utils/app_color.dart';
import 'package:cars/core/utils/app_route.dart';
import 'package:cars/core/utils/language_cubit.dart';
import 'package:cars/features/ui/home/home_screen.dart';
import 'package:cars/features/ui/inspection/car_inspection.dart';
import 'package:cars/features/ui/intro/intro_screen.dart';
import 'package:cars/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getApplicationDocumentsDirectory()).path,
    ),
  );
  runApp(const Cars());
}

class Cars extends StatelessWidget {
   const Cars({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>( create: (_) => LanguageCubit()),
      ],
      child: ScreenUtilPlusInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return BlocBuilder<LanguageCubit, Locale?>(
            builder: (context, locale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Drive Wise',
                locale: locale,
                supportedLocales: const [
                  Locale('en'),
                  Locale('ar'),
                ],
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                theme: ThemeData(
                  canvasColor: AppColor.black,
                  scaffoldBackgroundColor: AppColor.black,
                  primaryColor: AppColor.lightGreen,
                ),
                initialRoute: AppRoute.introScreen,
                routes: {
                  AppRoute.introScreen: (context) => IntroScreen(),
                  AppRoute.homeScreen: (context) => HomeScreen(),
                  AppRoute.carInspectionScreen: (context) => CarInspection(),
                },
              );
            },
          );
        },
      ),
    );
  }
}