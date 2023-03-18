import 'package:equatable/equatable.dart';

class PrayerTimeToJson extends Equatable {
  final double? latitude;
  final double? longitude;
  final int? method;
  final String? date;
  final String? address;
  final String? higrimonth;
  final String? higriYear;

  const PrayerTimeToJson(
     {
    this.higrimonth,
    this.higriYear,
    this.date,
    this.latitude,
    this.longitude,
    this.method,
    this.address,
  });

  @override
  List<Object?> get props => [latitude, longitude, method, date];
}
