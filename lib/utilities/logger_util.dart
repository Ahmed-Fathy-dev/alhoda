import 'package:logger/logger.dart';

final logger = Logger();

extension Log on Object {
  void logD() => logger.d(toString(), toString());
  void logE() => logger.e(toString(), toString());
  void logI() => logger.i(toString(), toString());
  void logW() => logger.w(toString(), toString());
  void logV() => logger.v(toString(), toString());
  void logWtf() => logger.wtf(toString(), toString());
}
