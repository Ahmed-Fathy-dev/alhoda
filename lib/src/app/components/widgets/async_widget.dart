import 'package:alhoda/src/app/components/animation/lottie_animation.dart';
import 'package:alhoda/src/app/components/widgets/loading.dart';
import 'package:alhoda/src/core/constants/enums/response_status.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import '../../../core/services/api/http_exception.dart';
import 'error_widget.dart';

class AsyncValueHandler<T> extends StatelessWidget {
  const AsyncValueHandler({
    super.key,
    required this.asyncValue,
    required this.dataWidget,
    this.errorWidget,
    this.loadingWidget,
  });
  final AsyncValue<T> asyncValue;
  final Widget Function(T) dataWidget;
  final Widget? errorWidget;
  final Widget? loadingWidget;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: dataWidget,
      error: (error, stackTrace) =>
          errorWidget ?? ErrorsWidget(error: error as HttpExceptions),
      loading: () => loadingWidget ?? const LoadingWidget(),
);
}
}


class GetStatusHandler extends StatelessWidget {
  const GetStatusHandler({
    super.key,
    required this.status,
    // this.lottieH,
    required this.child,
    this.loadingW,
    this.error,
  });
  final ResponseStatus status;
  // final double? lottieH;
  final Widget child;
  final Widget? loadingW;
  final HttpExceptions? error;
  @override
  Widget build(BuildContext context) {
    switch (status) {
      case ResponseStatus.loading:
        return loadingW ?? const LoadingWidget();
      // case ResponseStatus.noInternetC:
      //   return NetworkIssueStatus(
      //     height: lottieH,
      //     error: null,
      //   );
      case ResponseStatus.success:
        return child;
      default:
        return child;
}
}
}

