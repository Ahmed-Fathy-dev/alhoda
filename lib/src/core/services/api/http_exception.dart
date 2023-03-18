// ignore_for_file: constant_identifier_names

import 'package:alhoda/src/utilities/logger_util.dart';
import 'package:dio/dio.dart';

class HttpExceptions implements Exception {
  const HttpExceptions([
    this.code = ResponseCode.DEFAULT,
    this.message = ResponseMessage.DEFAULT,
  ]);

  factory HttpExceptions.fromCode(DioError error) {
    // '$error'.logV();
    switch (error.type) {
      case DioErrorType.connectionTimeout:
        // ResponseMessage.CONNECT_TIMEOUT.logE();
        return connectTimeout();
      case DioErrorType.sendTimeout:
        // ResponseMessage.SEND_TIMEOUT.logE();
        return sendTimeout();
      case DioErrorType.receiveTimeout:
        // ResponseMessage.RECEIVE_TIMEOUT.logE();
        return receiveTimeout();
      case DioErrorType.cancel:
        ResponseMessage.CANCEL.logE('ResponseMessage.CANCEL from exp');
        return cancel();
      case DioErrorType.badResponse:
        if (error.response != null &&
            error.response?.statusCode != null &&
            error.response?.statusMessage != null) {
          error.response?.statusMessage
              .toString()
              .logE('error.response?.statusMessage from exp');
          if (error.response?.statusCode == ResponseCode.UNAUTHORIZED) {
            error.response?.statusCode
                .toString()
                .logE('error.response?.statusCode from exp');
            return unauthorized(error);
          } else {
            return HttpExceptions(
              error.response?.statusCode as int,
              error.response?.statusMessage as String,
            );
          }
        } else {
          ResponseMessage.DEFAULT.logE('ResponseMessage.DEFAULT from exp');
          return const HttpExceptions();
        }

      // TODO: confirm socket exception is exist or not
      case DioErrorType.unknown:
        // if (error.error.toString().contains('SocketException')) {
        //   return noInternetConnection();
        // } else if (error.error.toString().contains(
        //       'Connection closed before full header was received',
        //     )) {
        //   ResponseMessage.RECEIVE_TIMEOUT
        //       .logE('ResponseMessage.RECEIVE_TIMEOUT from exp');
        //   return receiveTimeout();
        // } else {
        //   logger.e(error.error.toString(), 'from DioErrorType.other');
        // }
        logger.e(error.message, "badCertificate : error message");
        logger.e(error.type, "badCertificate : error type");
        logger.e(error.response, "badCertificate : error response");
        break;
      case DioErrorType.badCertificate:
        // TODO: Handle this case.
        logger.e(error.message, "badCertificate : error message");
        logger.e(error.type, "badCertificate : error type");
        logger.e(error.response, "badCertificate : error response");
        break;
      case DioErrorType.connectionError:
        // TODO: Handle this case.
        logger.e(error.message, "connectionError : error message");
        logger.e(error.type, "connectionError : error type");
        logger.e(error.response, "connectionError : error response");
        break;
    }
    ResponseMessage.DEFAULT.logE('ResponseMessage.DEFAULT from exp');
    return const HttpExceptions();
  }

  static HttpExceptions unauthorized([DioError? error]) {
    return HttpExceptions(
      ResponseCode.UNAUTHORIZED,
      error?.response?.statusMessage ?? ResponseMessage.UNAUTHORIZED,
    );
  }

  /// Connect Timeout Status Code
  static HttpExceptions connectTimeout() {
    return const HttpExceptions(
      ResponseCode.CONNECT_TIMEOUT,
      ResponseMessage.CONNECT_TIMEOUT,
    );
  }

  /// Cancel Status Code
  static HttpExceptions cancel() => const HttpExceptions(
        ResponseCode.CANCEL,
        ResponseMessage.CANCEL,
      );

  /// Connect Timeout Status Code
  static HttpExceptions receiveTimeout() {
    return const HttpExceptions(
      ResponseCode.RECEIVE_TIMEOUT,
      ResponseMessage.RECEIVE_TIMEOUT,
    );
  }

  /// Send Timeout Status Code
  static HttpExceptions sendTimeout() {
    return const HttpExceptions(
      ResponseCode.SEND_TIMEOUT,
      ResponseMessage.SEND_TIMEOUT,
    );
  }

  /// No Internet Connection Status Code
  static HttpExceptions noInternetConnection() {
    return const HttpExceptions(
      ResponseCode.NO_INTERNET_CONNECTION,
      ResponseMessage.NO_INTERNET_CONNECTION,
    );
  }

  static HttpExceptions defaultMessage(
      {final int? status, final String? message}) {
    return HttpExceptions(
      status ?? ResponseCode.DEFAULT,
      message ?? ResponseMessage.DEFAULT,
    );
  }

  final String message;
  final int code;
}

class ResponseCode {
  static const int SUCCESS = 200; // success with data
  // static const int NO_CONTENT = 201; // success with no data (no content)
  static const int NO_CONTENT = 201; // success on otp temp
  static const int BAD_REQUEST = 400; // failure, API rejected request
  static const int UNAUTHORIZED = 401; // failure, user is not authorized
  static const int FORBIDDEN = 403; //  failure, API rejected request
  static const int INTERNAL_SERVER_ERROR = 500; // failure, crash in server side
  static const int NOT_FOUND = 404; // failure, not found

  // local status code
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECEIVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

mixin ResponseMessage {
  static const String SUCCESS = 'success'; // success with data
  static const String NO_CONTENT =
      'success'; // success with no data (no content)
  static const String BAD_REQUEST =
      'Bad request, Try again later'; // failure, API rejected request
  static const String UNAUTHORIZED =
      'User is unauthorized, Try again later'; // failure, user is not authorized
  static const String FORBIDDEN =
      'Forbidden request, Try again later'; //  failure, API rejected request
  static const String INTERNAL_SERVER_ERROR =
      'Some thing went wrong, Try again later'; // failure, crash in server side
  static const String NOT_FOUND =
      'Some thing went wrong, Try again later'; // failure, crash in server side

  // local status code
  static const String CONNECT_TIMEOUT = 'Time out error, Try again later';
  static const String CANCEL = 'Request was cancelled, Try again later';
  static const String RECEIVE_TIMEOUT = 'Time out error, Try again later';
  static const String SEND_TIMEOUT = 'Time out error, Try again later';
  static const String CACHE_ERROR = 'Cache error, Try again later';
  static const String NO_INTERNET_CONNECTION =
      'Please check your internet connection';
  static const String DEFAULT = 'Some thing went wrong, Try again later';
}

// /// Custom exception used with Http requests
// class HttpException implements Exception {
//   /// Creates a new instance of [HttpException]
//   HttpException({
//     this.title,
//     this.message,
//     this.statusCode,
//   });

//   /// Exception title
//   final String? title;

//   /// Exception message
//   final String? message;

//   /// Exception http response code
//   final int? statusCode;
// }
