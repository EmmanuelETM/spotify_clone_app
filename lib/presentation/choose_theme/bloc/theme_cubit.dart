import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    try {
      final themeString = json['themeMode'] as String;
      return ThemeMode.values.firstWhere((e) => e.toString() == themeString, orElse: () => ThemeMode.system);
    } catch (e) {
      return ThemeMode.system; // Return a default value if error occurs
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'themeMode': state.toString()};
  }
}
