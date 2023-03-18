/// Http Service Interface
abstract class HttpService {
  /// Http base url
  // String get baseUrl;

  /// Http headers
  Map<String, String> get headers;

  /// Http get request
  Future<Map<String, dynamic>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    // bool forceRefresh = false,
    // bool hasToken = true,
  });

  /// Http post request
  Future<dynamic> post(
    String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    // bool hasToken = true,
  });

  /// Http put request
  Future<dynamic> put(String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    // bool hasToken = true,
  });


  /// Http delete request
  Future<dynamic> delete(String endpoint, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    // bool hasToken = true,
  });
}
