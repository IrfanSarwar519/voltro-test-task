import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../businessLogic/bloc/homeBloc/home_bloc.dart';
import '../../helper/constant/colors_resource.dart';
import '../../helper/constant/dimensions_resource.dart';
import '../../helper/constant/images_resource.dart';
import '../../helper/constant/strings_resource.dart';
import '../router/routes.dart';
import '../widgets/custom_listview_item.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_text_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: DimensionsResource.D_20.h,
            left: DimensionsResource.D_10.w,
            right: DimensionsResource.D_10.w),
        child: Column(
          children: [
            CustomTextField(
              controller: searchController,
              textInputAction: TextInputAction.search,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(DimensionsResource.D_14),
                child: SvgPicture.asset(ImagesResource.SEARCH_DARK_ICON),
              ),
              fillColor: ColorsResource.TEXTFIELD_FILL_COLOR,
              hintText: StringsResource.STR_SEARCH,
              contentPadding:
                  EdgeInsets.symmetric(vertical: DimensionsResource.D_12.h),
              onChanged: (search) => context
                  .read<HomeBloc>()
                  .add(HomeEvent.searchCountry(query: search ?? "")),
            ),
            SizedBox(height: DimensionsResource.D_12.h),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (!state.isSearchNotFound) {
                  return buildListWidget(state);
                } else {
                  return buildSearchNotFoundWidget(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    searchController.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<HomeBloc>().add(const HomeEvent.resetStates());
    super.deactivate();
  }

  Widget buildListWidget(HomeState state) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: state.filteredList?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                index == 0 ? const Divider() : const SizedBox.shrink(),
                CustomListViewItem(
                  country: state.filteredList?[index].country ?? "",
                  totalCases: state.filteredList?[index].totalConfirmed ?? 0,
                  onTap: () => context.push(DETAILS_SCREEN_ROUTE,
                      extra: state.filteredList?[index]),
                ),
              ],
            );
          }),
    );
  }

  Widget buildSearchNotFoundWidget(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImagesResource.SEARCH_NOT_FOUND_ICON,
            height: DimensionsResource.D_60.h,
            width: DimensionsResource.D_60.w,
          ),
          CustomTextView(
            text: StringsResource.STR_SEARCH_NOT_FOUND,
            align: TextAlign.center,
            alignment: Alignment.center,
            textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: ColorsResource.TEXT_FIELD_HINT_COLOR,
                fontSize: DimensionsResource.FONT_SIZE_1X_EXTRA_SMALL,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
