import 'package:alhoda/utilities/logger_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ObserverLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    logger.wtf('${provider.name ?? provider.runtimeType}', 'provider');
    logger.wtf(newValue, 'newValue');
//     print('''
// {
//   "provider": "${provider.name ?? provider.runtimeType}",
//   "newValue": "$newValue"
// }''');
  }
}
