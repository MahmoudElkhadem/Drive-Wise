
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class LanguageCubit extends HydratedCubit<Locale?> {
  LanguageCubit() : super(null);

  void changeLanguage(String? languageCode) {
    if (languageCode == null || languageCode == 'system') {
      emit(null);
    } else {
      emit(Locale(languageCode));
    }
  }

  String get selectedLanguage => state?.languageCode ?? 'system';

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    final languageCode = json['languageCode'] as String?;

    if (languageCode == null || languageCode == 'system') {
      return null;
    }

    return Locale(languageCode);
  }

  @override
  Map<String, dynamic>? toJson(Locale? state) {
    return {
      'languageCode': state?.languageCode ?? 'system',
    };
  }
}
