// Package imports:
import 'package:dio/dio.dart';

class HttpAuthorizationInterceptor extends QueuedInterceptor {
  /// Called when the request is about to be sent.
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    handler.next(options);
  }

  /// Called when the response is about to be resolved.
  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    handler.next(response);
  }

  /// Called when an exception was occurred during the request.
  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    handler.next(err);
  }
}
