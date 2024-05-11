import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import 'custom_text_view.dart';

/// Reusable widget for application's List.
class CustomListViewItem extends StatelessWidget {
  final String country;
  final int totalCases;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Function()? onTap;

  const CustomListViewItem(
      {super.key,
      required this.country,
      required this.totalCases,
      this.fontSize,
      this.fontWeight,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DimensionsResource.D_15.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomTextView(
                text: country,
                maxLines: 1,
                isEllipsis: true,
                align: TextAlign.start,
                alignment: Alignment.centerLeft,
                textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: ColorsResource.TEXT_COLOR,
                    fontSize: fontSize ?? DimensionsResource.FONT_SIZE_MEDIUM,
                    fontWeight: fontWeight ?? FontWeight.normal),
              ),
            ),
            CustomTextView(
              text: totalCases.toString(),
              align: TextAlign.center,
              alignment: Alignment.center,
              textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: ColorsResource.TEXT_COLOR,
                  fontSize: fontSize ?? DimensionsResource.FONT_SIZE_MEDIUM,
                  fontWeight: fontWeight ?? FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
