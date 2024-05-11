import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../dataProvider/model/response/countries_model.dart';
import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import '../../helper/constant/strings_resource.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_text_view.dart';

class DetailsScreen extends StatefulWidget {
  final CountriesModel country;

  const DetailsScreen({super.key, required this.country});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        backgroundColor: ColorsResource.PRIMARY_COLOR,
        title: widget.country.country,
        subTitle: StringsResource.STR_CORONA_STATS_OVERVIEW,
        titleColor: ColorsResource.WHITE_COLOR,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: DimensionsResource.D_30.h,
            left: DimensionsResource.D_15.w,
            right: DimensionsResource.D_15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildDataWidget(context, StringsResource.STR_TOTAL_CASES,
                    widget.country.totalConfirmed),
                SizedBox(width: DimensionsResource.D_100.w),
                buildDataWidget(context, StringsResource.STR_TOTAL_DEATHS,
                    widget.country.totalDeaths)
              ],
            ),
            SizedBox(height: DimensionsResource.D_30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildDataWidget(context, StringsResource.STR_NEW_CASES,
                    widget.country.newConfirmed),
                SizedBox(width: DimensionsResource.D_107.w),
                buildDataWidget(context, StringsResource.STR_NEW_DEATHS,
                    widget.country.newDeaths)
              ],
            ),
            SizedBox(height: DimensionsResource.D_30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildDataWidget(context, StringsResource.STR_NEW_RECOVERED,
                    widget.country.newRecovered),
                SizedBox(width: DimensionsResource.D_85.w),
                buildDataWidget(context, StringsResource.STR_TOTAL_RECOVERED,
                    widget.country.totalRecovered)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildDataWidget(BuildContext context, String title, int? data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextView(
          text: title,
          textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: ColorsResource.TEXT_COLOR, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: DimensionsResource.D_10.h),
        CustomTextView(
          text: data.toString(),
          textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: ColorsResource.TEXT_COLOR, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
