import 'package:alhoda/src/core/services/api/base_url.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dio_http_service.dart';
import 'http_service.dart';



// Provider that maps an [HttpService] interface to implementation
final httpServiceProvider = Provider.family<HttpService,BaseUrls>((ref, baseUrl) {
  // final storageService = ref.watch(storageServiceProvider);
  
  return DioHttpService( baseUrl: baseUrl);
});

