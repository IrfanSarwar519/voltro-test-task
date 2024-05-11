import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import '../../helper/constant/images_resource.dart';
import 'custom_text_view.dart';

/// Reusable widget for application's AppBar.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.onTap,
      this.boxShadow,
      this.height,
      this.titleColor,
      this.backgroundColor,
      this.title,
      this.subTitle});

  final String? title;
  final String? subTitle;
  final Color? backgroundColor;
  final double? height;
  final BoxShadow? boxShadow;
  final Function()? onTap;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: DimensionsResource.D_5),
      child: AppBar(
        toolbarHeight: height,
        backgroundColor: backgroundColor ?? ColorsResource.WHITE_COLOR,
        elevation: 0,
        titleSpacing: 0,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextView(
              text: title ?? "",
              align: TextAlign.center,
              alignment: Alignment.center,
              textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: titleColor ?? ColorsResource.TEXT_COLOR,
                  fontSize: DimensionsResource.FONT_SIZE_4X_EXTRA_MEDIUM,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: DimensionsResource.D_10.h),
            CustomTextView(
              text: subTitle ?? "",
              align: TextAlign.center,
              alignment: Alignment.center,
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: titleColor ?? ColorsResource.TEXT_COLOR,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(top: DimensionsResource.D_20.h),
          child: IconButton(
            icon: SvgPicture.asset(ImagesResource.ARROW_BACK_ICON),
            onPressed: onTap ??
                () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  Navigator.of(context).pop();
                },
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height ?? DimensionsResource.D_250.h);
}
