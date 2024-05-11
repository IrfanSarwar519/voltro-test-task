import 'package:dio/dio.dart';

import '../../helper/constant/constants_resource.dart';
import '../../repository/data_manager.dart';
import 'network_api_client.dart';
import 'network_interceptor.dart';

class ApiService {
  DataManager getDataManagerInstance() {
    return DataManager(
        networkApiClient: NetworkApiClient(Dio(
      (BaseOptions(
          contentType: 'application/json',
          headers: {
            "Accept": 'application/json',
          },
          baseUrl: ConstantsResource.BASE_URL)),
    )..interceptors.add(NetworkInterceptor())));
  }
}
