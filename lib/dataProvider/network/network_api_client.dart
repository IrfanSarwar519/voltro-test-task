import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../model/response/covid_summary_model.dart';

part 'network_api_client.g.dart';

@RestApi()
abstract class NetworkApiClient {
  factory NetworkApiClient(Dio dio, {String baseUrl}) = _NetworkApiClient;

  @GET("/summary")
  Future<CovidSummaryModel> getCovidSummary();
}
