import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../../helper/constant/constants_resource.dart';

class NetworkInterceptor extends Interceptor {
  static const _responseLocator = 'assets/json/response_locator.json';

  /** I've used logic for mocking endpoint response using local json files because the endpoints in API Collection link
      are not working. If we get live endpoints then whole setup for the endpoints handling will remain the same except we
      have to remove the file from assets/json and also from response_locator.json and then we can implement our own
      logic in else part for request headers (e.g sending Access Token) or any other logic required by the API*/
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    /** Make sure if you added any response json file in assets/json then also add key(endpoint url) and value(response file path)
        of that response file in response_locator.json */

    final Map<String, dynamic> responseLocator =
        jsonDecode(await rootBundle.loadString(_responseLocator));

    if (responseLocator.containsKey(options.path)) {
      await Future.delayed(
        const Duration(seconds: ConstantsResource.MOCK_API_DELAY),
      );
      final data = await rootBundle.load(responseLocator[options.path]);
      final encodedData = utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      final response =
          encodedData.isEmpty ? encodedData : json.decode(encodedData);

      /// un-comment for sending server known response with status code
      // handler.reject(DioError(
      //     requestOptions: options,
      //     response: Response<Map<String, dynamic>>(
      //       requestOptions: options,
      //       data: {
      //         "response": {
      //           "status": false,
      //           "message": "This response is from server"
      //         }
      //       },
      //       statusCode: 400,
      //     )));

      handler.resolve(Response(
        requestOptions: options,
        data: response,
      ));
    } else {
      handler.next(options);
    }
  }
}
