import 'package:flutter/material.dart';
import 'package:teste_moteis_go/app/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryColor,
        // primary: AppColors.primaryColor,
        // secondary: AppColors.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        actionsIconTheme:
            Theme.of(context).iconTheme.copyWith(color: Colors.white),
        elevation: 0,
        titleTextStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.white;
              }
              return Colors.black12;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.primaryColor;
              }
              return Colors.white;
            },
          ),
          iconColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return AppColors.primaryColor;
              }
              return Colors.white;
            },
          ),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: Colors.transparent),
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      cardTheme: CardTheme(color: Colors.white),
      dividerTheme: DividerThemeData(color: Colors.grey.shade300),
    );
  }
}
