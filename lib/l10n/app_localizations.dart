import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @madeForYourFirstCar.
  ///
  /// In en, this message translates to:
  /// **'MADE FOR YOUR FIRST CAR'**
  String get madeForYourFirstCar;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @yourFirstCar.
  ///
  /// In en, this message translates to:
  /// **'Your First Car?'**
  String get yourFirstCar;

  /// No description provided for @chooseItWithConfidence.
  ///
  /// In en, this message translates to:
  /// **'Choose it with confidence'**
  String get chooseItWithConfidence;

  /// No description provided for @compareCarsUnderstandTheirCosts.
  ///
  /// In en, this message translates to:
  /// **'Compare cars, understand their costs, and learn how to inspect a used vehicle before you pay.'**
  String get compareCarsUnderstandTheirCosts;

  /// No description provided for @compareBeforeYouChoose.
  ///
  /// In en, this message translates to:
  /// **'Compare before you choose'**
  String get compareBeforeYouChoose;

  /// No description provided for @seeDifferenceBetweenCars.
  ///
  /// In en, this message translates to:
  /// **'See the difference between cars in price, gasoline consumption, safety and maintenance costs.'**
  String get seeDifferenceBetweenCars;

  /// No description provided for @thinkItThroughCarefullyBeforeYouBuy.
  ///
  /// In en, this message translates to:
  /// **'Think it through carefully before you buy.'**
  String get thinkItThroughCarefullyBeforeYouBuy;

  /// No description provided for @knowTheCostOfOwnership.
  ///
  /// In en, this message translates to:
  /// **'Know the cost of ownership and check the used car step by step before you pay.'**
  String get knowTheCostOfOwnership;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @letsGO.
  ///
  /// In en, this message translates to:
  /// **'Let’s get started'**
  String get letsGO;

  /// No description provided for @yourSmartCarCompanion.
  ///
  /// In en, this message translates to:
  /// **'YOUR SMART CAR COMPANION'**
  String get yourSmartCarCompanion;

  /// No description provided for @findTheRightCar.
  ///
  /// In en, this message translates to:
  /// **'Find the right car.'**
  String get findTheRightCar;

  /// No description provided for @makeEveryDriveASmarterDecision.
  ///
  /// In en, this message translates to:
  /// **'Make every drive a smarter decision.'**
  String get makeEveryDriveASmarterDecision;

  /// No description provided for @searchMakeModel.
  ///
  /// In en, this message translates to:
  /// **'Search make, model or type'**
  String get searchMakeModel;

  /// No description provided for @driveBeyondOrdinary.
  ///
  /// In en, this message translates to:
  /// **'Drive beyond ordinary.'**
  String get driveBeyondOrdinary;

  /// No description provided for @exploreCarsThatFitYourLifestyle.
  ///
  /// In en, this message translates to:
  /// **'Explore cars that fit your lifestyle.'**
  String get exploreCarsThatFitYourLifestyle;

  /// No description provided for @exploreCars.
  ///
  /// In en, this message translates to:
  /// **'Explore cars'**
  String get exploreCars;

  /// No description provided for @compareCars.
  ///
  /// In en, this message translates to:
  /// **'Compare cars'**
  String get compareCars;

  /// No description provided for @exploreDriveWise.
  ///
  /// In en, this message translates to:
  /// **'Explore Drive Wise'**
  String get exploreDriveWise;

  /// No description provided for @everythingYouNeedBeforeYouBuy.
  ///
  /// In en, this message translates to:
  /// **'Everything you need before you buy.'**
  String get everythingYouNeedBeforeYouBuy;

  /// No description provided for @findYourBestMatch.
  ///
  /// In en, this message translates to:
  /// **'Find your best match'**
  String get findYourBestMatch;

  /// No description provided for @carInspection.
  ///
  /// In en, this message translates to:
  /// **'Car inspection'**
  String get carInspection;

  /// No description provided for @buyWithConfidence.
  ///
  /// In en, this message translates to:
  /// **'Buy with confidence'**
  String get buyWithConfidence;

  /// No description provided for @carProblems.
  ///
  /// In en, this message translates to:
  /// **'Car problems'**
  String get carProblems;

  /// No description provided for @identifyYourCarsProblems.
  ///
  /// In en, this message translates to:
  /// **'Identify your car\'s problems'**
  String get identifyYourCarsProblems;

  /// No description provided for @recommendedForYou.
  ///
  /// In en, this message translates to:
  /// **'Recommended for you'**
  String get recommendedForYou;

  /// No description provided for @handpickedOptionsWorthACloserLook.
  ///
  /// In en, this message translates to:
  /// **'Handpicked options worth a closer look.'**
  String get handpickedOptionsWorthACloserLook;

  /// No description provided for @exploreModel.
  ///
  /// In en, this message translates to:
  /// **'Explore model'**
  String get exploreModel;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @discover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get discover;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @discoverCars.
  ///
  /// In en, this message translates to:
  /// **'Discover Cars'**
  String get discoverCars;

  /// No description provided for @findTheCarThatFitsYourLife.
  ///
  /// In en, this message translates to:
  /// **'Find the car that fits your life.'**
  String get findTheCarThatFitsYourLife;

  /// No description provided for @savedCars.
  ///
  /// In en, this message translates to:
  /// **'Saved cars'**
  String get savedCars;

  /// No description provided for @yourFavoriteCarsAllInOnePlace.
  ///
  /// In en, this message translates to:
  /// **'Your favorite cars, all in one place.'**
  String get yourFavoriteCarsAllInOnePlace;

  /// No description provided for @yourCollection.
  ///
  /// In en, this message translates to:
  /// **'Your collection'**
  String get yourCollection;

  /// No description provided for @everythingYouNeedForASmarterCarJourney.
  ///
  /// In en, this message translates to:
  /// **'Everything you need for a smarter car journey.'**
  String get everythingYouNeedForASmarterCarJourney;

  /// No description provided for @yourDriveWiseAccount.
  ///
  /// In en, this message translates to:
  /// **'Your Drive Wise account'**
  String get yourDriveWiseAccount;

  /// No description provided for @manageYourProfileAndPreferences.
  ///
  /// In en, this message translates to:
  /// **'Manage your profile and preferences'**
  String get manageYourProfileAndPreferences;

  /// No description provided for @yourTools.
  ///
  /// In en, this message translates to:
  /// **'Your tools'**
  String get yourTools;

  /// No description provided for @helpfulFeaturesForEveryCarOwner.
  ///
  /// In en, this message translates to:
  /// **'Helpful features for every car owner'**
  String get helpfulFeaturesForEveryCarOwner;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @systemLanguage.
  ///
  /// In en, this message translates to:
  /// **'System Language'**
  String get systemLanguage;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @on.
  ///
  /// In en, this message translates to:
  /// **'on'**
  String get on;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'off'**
  String get off;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notification;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support & information'**
  String get support;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About & contact'**
  String get about;

  /// No description provided for @smarterWayToCheckUsedCar.
  ///
  /// In en, this message translates to:
  /// **'A smarter way to check a used car.'**
  String get smarterWayToCheckUsedCar;

  /// No description provided for @inspectionChecklist.
  ///
  /// In en, this message translates to:
  /// **'Inspection checklist'**
  String get inspectionChecklist;

  /// No description provided for @workThroughTheseKeyAreasWhenViewingCar.
  ///
  /// In en, this message translates to:
  /// **'Work through these key areas when viewing a car.'**
  String get workThroughTheseKeyAreasWhenViewingCar;

  /// No description provided for @exteriorInspection.
  ///
  /// In en, this message translates to:
  /// **'Exterior Inspection'**
  String get exteriorInspection;

  /// No description provided for @bodyPanels.
  ///
  /// In en, this message translates to:
  /// **'Body panels, paint, glass and tires'**
  String get bodyPanels;

  /// No description provided for @interiorInspection.
  ///
  /// In en, this message translates to:
  /// **'Interior Inspection'**
  String get interiorInspection;

  /// No description provided for @seatsDashboardAndElectronics.
  ///
  /// In en, this message translates to:
  /// **'Seats, dashboard, AC and electronics'**
  String get seatsDashboardAndElectronics;

  /// No description provided for @engineMechanical.
  ///
  /// In en, this message translates to:
  /// **'Engine & Mechanical'**
  String get engineMechanical;

  /// No description provided for @engineTransmission.
  ///
  /// In en, this message translates to:
  /// **'Engine, transmission, fluids and brakes'**
  String get engineTransmission;

  /// No description provided for @chassisInspection.
  ///
  /// In en, this message translates to:
  /// **'Chassis Inspection'**
  String get chassisInspection;

  /// No description provided for @chassisPillarsUnderbody.
  ///
  /// In en, this message translates to:
  /// **'Chassis, pillars, underbody and accident signs'**
  String get chassisPillarsUnderbody;

  /// No description provided for @documentsCheck.
  ///
  /// In en, this message translates to:
  /// **'Documents Check'**
  String get documentsCheck;

  /// No description provided for @licenseVIN.
  ///
  /// In en, this message translates to:
  /// **'License, VIN, engine number and ownership'**
  String get licenseVIN;

  /// No description provided for @startInspectionChecklist.
  ///
  /// In en, this message translates to:
  /// **'Start inspection checklist'**
  String get startInspectionChecklist;

  /// No description provided for @visualChecklistIsHelpful.
  ///
  /// In en, this message translates to:
  /// **'A visual checklist is helpful, but a professional inspection is still recommended.'**
  String get visualChecklistIsHelpful;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
