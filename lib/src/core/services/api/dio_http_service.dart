import 'package:alhoda/src/core/services/api/base_url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../../utilities/logger_util.dart';
import 'http_exception.dart';
import 'http_service.dart';

/// Http service implementation using the Dio package
///
/// See https://pub.dev/packages/dio
class DioHttpService implements HttpService {
  /// Creates new instance of [DioHttpService]
  ///
  final BaseUrls baseUrl;
  DioHttpService({
    required this.baseUrl,
    Dio? dioOverride,
  }) {
    /// Create a new Dio instance
    dio = dioOverride ?? Dio(baseOptions);
    dio.options.headers = headers;

    /// Add logging interceptor in debug mode
    if (kDebugMode) {
      dio.interceptors.add(interceptors);
    }
  }

  // /// Secure storage service used for caching token

  // /// Storage service used for caching http responses
  // final StorageService storageService;

  /// The Dio Http client
  late final Dio dio;

  /// The Dio base options
  BaseOptions get baseOptions => BaseOptions(
        baseUrl: baseUrl.name,
        headers: headers,
        connectTimeout: const Duration(milliseconds: 10000),
      );
  LogInterceptor get interceptors => LogInterceptor(
        responseBody: true,
        requestBody: true,
      );

  // @override
  // // String get baseUrl => 'https://ovu-app-t39xl.ondigitalocean.app';
  // String get baseUrl => 'https://ovu-app-t39xl.ondigitalocean.app';

  @override
  Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json'
  };

  @override
  Future<Map<String, dynamic>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    bool forceRefresh = false,
    bool hasToken = true,
    String? customBaseUrl,
  }) async {
    // final locale = storageService.get('locale');
    // dio.options.extra[Configs.dioCacheForceRefreshKey] = forceRefresh;
    // dio.options.headers.addAll({'Accept-Language': locale});

    // if (hasToken) {
    //   // final token = await secureStorageService.get(StorageKeys.accessToken);
    //   //TODO: change token do dynamic
    //   final token = customToken;
    //   logger.wtf(token, 'token from service');
    //   // // final token = '293|szYK1GjtvjnEOUn8SWLprHXHAP2wcnwiQzGFz8kH';
    //   // // logger.d(token, 'token');
    //   dio.options.headers.addAll({'Authorization': 'Bearer $token'});
    // }

    logger.i(dio.options.headers, '🗣️ 🗣️ Header: ');
    logger.i(queryParameters, '🌍 🌍 Query params:');
    try {
      final Response<dynamic> response = await dio.get<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParameters,
      );
      return response.data as Map<String, dynamic>;
    } on DioError catch (e) {
      logger.e(e);
      throw HttpExceptions.fromCode(e);
    } catch (e) {
      logger.e(e);
      throw HttpExceptions.defaultMessage(message: e.toString());
    }
  }

  @override
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    bool hasToken = true,
  }) async {
    try {
      // final locale = storageService.get('locale');
      // dio.options.headers.addAll({'Accept-Language': locale});
      // if (hasToken) {
      //   // final token = await secureStorageService.get(StorageKeys.accessToken);
      //   //TODO: change token do dynamic
      //   final token = customToken;

      //   logger.wtf(token, 'token from service');

      //   // final token = '293|szYK1GjtvjnEOUn8SWLprHXHAP2wcnwiQzGFz8kH';
      //   dio.options.headers.addAll({'Authorization': 'Bearer $token'});
      // }
      final response = await dio.post<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      );
      return response.data;
    } on DioError catch (e) {
      logger.e(e);
      throw HttpExceptions.fromCode(e);
    } catch (e) {
      logger.e(e);
      throw HttpExceptions.defaultMessage(message: e.toString());
    }
  }

  @override
  Future<dynamic> delete(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    // bool hasToken = true,
  }) async {
    try {
      // if (hasToken) {
      //   // final token = await secureStorageService.get(StorageKeys.accessToken);
      //   // dio.options.headers.addAll({'Authorization': 'Bearer $token'});
      // }

      final Response<dynamic> response = await dio.delete<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      );

      return response.data;
    } on DioError catch (e) {
      logger.e(e);
      throw HttpExceptions.fromCode(e);
    } catch (e) {
      logger.e(e);
      throw HttpExceptions.defaultMessage(message: e.toString());
    }
  }

  @override
  Future<dynamic> put(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    bool hasToken = true,
  }) async {
    try {
      // if (hasToken) {
      //   // final token = await secureStorageService.get(StorageKeys.accessToken);
      //   final token = customToken;
      //   logger.wtf(token, 'token from service');
      //   dio.options.headers.addAll({'Authorization': 'Bearer $token'});
      // }

      logger.i('🗣️ 🗣️ Header: ${dio.options.headers}');
      logger.i('🌍 🌍 Query params: $queryParameters');

      final Response<dynamic> response = await dio.put<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParameters,
        data: data,
      );

      return response.data;
    } on DioError catch (e) {
      throw HttpExceptions.fromCode(e);
    } catch (e) {
      throw HttpExceptions.defaultMessage(message: e.toString());
    }
  }
}
