import 'package:dio/dio.dart';

import '../dataProvider/model/response/covid_summary_model.dart';
import '../dataProvider/network/network_api_client.dart';
import '../helper/constant/strings_resource.dart';
import 'data_manager_imp.dart';

class DataManager implements DataManagerImp {
  late final NetworkApiClient _networkApiClient;

  DataManager({required NetworkApiClient networkApiClient}) {
    _networkApiClient = networkApiClient;
  }

  @override
  Future<CovidSummaryModel> getCovidSummary() async {
    return _networkApiClient
        .getCovidSummary()
        .then((successResponse) => successResponse)
        .catchError((e) {
      switch (e.runtimeType) {
        case DioException:
          return errorHandling(e);
        default:
          return CovidSummaryModel(message: e.toString());
      }
    });
  }

  /** As endpoints in provided document of API Collection are not working and
      there is no proper idea what the error response might return so I didn't
      created the general or proper method for handling error responses. */
  CovidSummaryModel errorHandling(DioException e) {
    final errorResponse = e.response;
    if (errorResponse?.data != null) {
      return CovidSummaryModel(
          message: errorResponse?.statusMessage,
          errorCode: errorResponse?.statusCode);
    } else {
      return CovidSummaryModel(
          message: StringsResource.STR_STH_WRONG,
          errorCode: errorResponse?.statusCode);
    }
  }
}
