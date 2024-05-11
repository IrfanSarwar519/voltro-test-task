import 'package:flutter/material.dart';

/// General statuses file for handling endpoints states.

@immutable
abstract class ApiRequestStatus {
  const ApiRequestStatus();
}

class InitialApiRequestStatus extends ApiRequestStatus {
  const InitialApiRequestStatus();
}

class ApiRequestStatusLoading extends ApiRequestStatus {}

class ApiRequestStatusSuccess extends ApiRequestStatus {
  final dynamic data;

  const ApiRequestStatusSuccess({this.data});
}

class ApiRequestStatusFailure extends ApiRequestStatus {
  final int? errorCode;
  final String errorMessage;

  const ApiRequestStatusFailure(this.errorCode, this.errorMessage);
}
