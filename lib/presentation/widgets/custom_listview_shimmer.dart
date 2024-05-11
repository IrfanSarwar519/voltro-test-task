import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../helper/constant/dimensions_resource.dart';

/// Reusable widget for application's List Shimmer effect.
class CustomListViewShimmer extends StatelessWidget {
  const CustomListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: EdgeInsets.only(
            top: DimensionsResource.D_30.h,
            left: DimensionsResource.D_15.w,
            right: DimensionsResource.D_15.w),
        child: Column(
          children: [
            Container(
              height: DimensionsResource.D_50.h,
              color: Colors.white,
            ),
            SizedBox(height: DimensionsResource.D_12.h),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20, // Adjust the count based on your needs
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Container(
                      height: DimensionsResource.D_20.h,
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
