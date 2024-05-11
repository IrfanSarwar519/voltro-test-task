import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../businessLogic/api_request_status.dart';
import '../../businessLogic/bloc/homeBloc/home_bloc.dart';
import '../../dataProvider/model/response/covid_summary_model.dart';
import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import '../../helper/constant/images_resource.dart';
import '../../helper/constant/strings_resource.dart';
import '../../helper/util/dialog_utils.dart';
import '../router/routes.dart';
import '../widgets/custom_listview_item.dart';
import '../widgets/custom_listview_shimmer.dart';
import '../widgets/custom_text_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.getCovidSummary());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) async {
          final getCovidSummaryARS = state.getCovidSummaryARS;
          if (getCovidSummaryARS is ApiRequestStatusFailure) {
            await DialogUtils.showAlertDialog(
                context: context,
                title: getCovidSummaryARS.errorCode.toString(),
                message: getCovidSummaryARS.errorMessage);
          }
        },
        builder: (context, state) {
          final getCovidSummaryARS = state.getCovidSummaryARS;
          if (getCovidSummaryARS is ApiRequestStatusLoading) {
            return const CustomListViewShimmer();
          } else if (getCovidSummaryARS is ApiRequestStatusSuccess) {
            final covidSummary = getCovidSummaryARS.data as CovidSummaryModel;
            if (covidSummary.countries?.isEmpty == true) {
              return buildDataNotFoundWidget(context);
            } else {
              return Column(
                children: [
                  SizedBox(height: DimensionsResource.D_30.h),
                  CustomListViewItem(
                    country: StringsResource.STR_WORLD,
                    totalCases: covidSummary.global?.totalConfirmed ?? 0,
                    fontSize: DimensionsResource.FONT_SIZE_4X_EXTRA_MEDIUM,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: DimensionsResource.D_12.h),
                  buildListWidget(covidSummary),
                ],
              );
            }
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  @override
  void deactivate() {
    context.read<HomeBloc>().add(const HomeEvent.resetStates());
    super.deactivate();
  }

  Widget buildDataNotFoundWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImagesResource.EMPTY_LIST_ICON,
          height: DimensionsResource.D_60.h,
          width: DimensionsResource.D_60.w,
        ),
        CustomTextView(
          text: StringsResource.STR_DATA_NOT_FOUND,
          align: TextAlign.center,
          alignment: Alignment.center,
          textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: ColorsResource.TEXT_FIELD_HINT_COLOR,
              fontSize: DimensionsResource.FONT_SIZE_1X_EXTRA_SMALL,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }

  Widget buildListWidget(CovidSummaryModel covidSummary) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: covidSummary.countries?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                index == 0 ? const Divider() : const SizedBox.shrink(),
                CustomListViewItem(
                  country: covidSummary.countries?[index].country ?? "",
                  totalCases:
                      covidSummary.countries?[index].totalConfirmed ?? 0,
                  onTap: () => context.push(DETAILS_SCREEN_ROUTE,
                      extra: covidSummary.countries?[index]),
                ),
              ],
            );
          }),
    );
  }
}
