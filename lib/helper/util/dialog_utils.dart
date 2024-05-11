import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../presentation/widgets/custom_text_view.dart';
import '../constant/colors_resource.dart';
import '../constant/dimensions_resource.dart';
import '../constant/strings_resource.dart';

class DialogUtils {
  /// This is a general dialog for showing alerts e.g showing errors from server etc.
  static Future<bool?> showAlertDialog(
      {required BuildContext context,
      required String title,
      required String message}) async {
    return await showDialog<bool>(
      barrierDismissible: false,
      context: context,
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.symmetric(
              horizontal: DimensionsResource.D_15.w,
              vertical: DimensionsResource.D_20.h),
          backgroundColor: ColorsResource.WHITE_COLOR,
          titlePadding: EdgeInsets.only(
              left: DimensionsResource.D_20.w,
              right: DimensionsResource.D_20.w,
              top: DimensionsResource.D_20.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(DimensionsResource.D_12.r)),
          title: Center(
            child: CustomTextView(
              text: StringsResource.STR_ERROR + title,
              textScaleFactor: true,
              textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: ColorsResource.PRIMARY_COLOR,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextView(
                    textScaleFactor: true,
                    text: message,
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: ColorsResource.BLACK_COLOR,
                          fontWeight: FontWeight.w300,
                        )),
                SizedBox(
                  height: DimensionsResource.D_25.h,
                ),
                CustomTextView(
                  text: StringsResource.STR_DISMISS,
                  alignment: Alignment.centerRight,
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: ColorsResource.PRIMARY_COLOR,
                      fontSize: DimensionsResource.FONT_SIZE_MEDIUM,
                      fontWeight: FontWeight.normal),
                  textScaleFactor: true,
                  onTap: () {
                    Navigator.of(context).pop(true);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
