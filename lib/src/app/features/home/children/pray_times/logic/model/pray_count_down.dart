import 'package:equatable/equatable.dart';

class PrayCountDown extends Equatable {
  final String? nextPrayName;
  final Duration? totalduration;
  final String? previousPrayName;
  final Duration? remainingTime;

  const PrayCountDown(
      {this.nextPrayName,
      this.remainingTime,
      this.previousPrayName,
       this. totalduration});

  @override
  List<Object?> get props => [nextPrayName, remainingTime, previousPrayName];
}
