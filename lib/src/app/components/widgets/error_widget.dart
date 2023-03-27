import 'dart:async';

import 'package:alhoda/src/app/features/home/views/pages/home_screen.dart';
import 'package:alhoda/src/core/configs/Routers/routes.dart';
import 'package:alhoda/src/core/services/api/http_exception.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

/// Default error view widget
class ErrorsWidget extends StatelessWidget {
  /// Creates a new instance of [ErrorsWidget]
  const ErrorsWidget({super.key, required this.error, this.onRetry});
  final HttpExceptions error;
  final void Function()? onRetry;

  @override
  Widget build(BuildContext context) {
    // final data = error as HttpException;
    return error.code == HttpExceptions.unauthorized().code
        ? InkWell(
            onTap: () {
              context.push(const HomeScreen());
            },
            child: NetworkIssueStatus(error: error),
          )
        : InkWell(onTap: onRetry, child: NetworkIssueStatus(error: error));
  }
}

class NetworkIssueStatus extends StatelessWidget {
  const NetworkIssueStatus({
    Key? key,
    this.height,
    required this.error,
  }) : super(key: key);
  final HttpExceptions error;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 40),
        //   child: ImageWidget.lottieFromAsset(
        //     error == HttpExceptions.noInternetConnection()
        //         ? assetsFile.lostConnectLottie
        //         : assetsFile.generalErrorLottie,
        //     height: height,
        //   ),
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              error.message,
              style: const TextStyle(fontSize: 15),
            ),
            const Text(
              'Retry',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ],
    );
  }
}

class LocationErrorWidget extends StatelessWidget {
  /// Creates a new instance of [ErrorsWidget]
  const LocationErrorWidget({
    super.key,
    required this.onRetry,
  });
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    // final data = error as HttpException;
    return Center(
      child: InkWell(
        onTap: ()  {
          onRetry;
        },
        child: Text("asyncError.error"),
      ),
    );
  }
}
