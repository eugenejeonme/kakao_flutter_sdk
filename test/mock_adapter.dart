import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';

class MockAdapter extends HttpClientAdapter {
  late ResponseBody _responseBody;
  void Function(RequestOptions options)? requestAssertions;

  void setResponse(ResponseBody responseBody) {
    this._responseBody = responseBody;
  }

  void setResponseString(String body, int statusCode) {
    this._responseBody = ResponseBody.fromString(body, statusCode, headers: {
      HttpHeaders.contentTypeHeader: [ContentType.json.mimeType]
    });
  }

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<Uint8List> requestStream, Future? cancelFuture) async {
    requestAssertions?.call(options);
    return _responseBody;
  }

  @override
  void close({bool force = false}) {}
}
