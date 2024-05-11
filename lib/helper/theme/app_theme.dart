import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voltro_test_task/helper/theme/text_styles.dart';

import '../constant/colors_resource.dart';
import '../constant/dimensions_resource.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.redHatDisplay().fontFamily,
    brightness: Brightness.light,
    cardColor: ColorsResource.WHITE_COLOR,
    primaryColorDark: ColorsResource.PRIMARY_COLOR_DARK,
    scaffoldBackgroundColor: ColorsResource.WHITE_COLOR,
    primaryColor: ColorsResource.PRIMARY_COLOR,
    colorScheme:
        ThemeData().colorScheme.copyWith(primary: ColorsResource.WHITE_COLOR),
    dialogBackgroundColor: ColorsResource.WHITE_COLOR,
    appBarTheme: const AppBarTheme(
        backgroundColor: ColorsResource.WHITE_COLOR,
        titleTextStyle: TextStyle(
            fontSize: DimensionsResource.D_20,
            fontWeight: FontWeight.normal,
            color: ColorsResource.WHITE_COLOR)),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorsResource.PRIMARY_COLOR,
      selectionColor: ColorsResource.WHITE_COLOR,
      selectionHandleColor: ColorsResource.PRIMARY_COLOR,
    ),
    textTheme: textTheme,
  );
}
