import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pray_time_model.g.dart';

@JsonSerializable(createToJson: false)
class PrayerTimeMRes extends Equatable {
  const PrayerTimeMRes({
    required this.code,
    required this.status,
    required this.data,
  });
  final int? code;
  final String? status;
  final PrayerTimeModel? data;

  factory PrayerTimeMRes.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimeMResFromJson(json);

  @override
  List<Object?> get props => [
        code,
        status,
        data,
      ];
}

@JsonSerializable(createToJson: false)
class PrayerTimeModel extends Equatable {
  const PrayerTimeModel({
    required this.timings,
    required this.date,
    required this.meta,
  });

  final Timings? timings;
  final DateModelRes? date;
  final LocationModel? meta;

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) =>
      _$PrayerTimeModelFromJson(json);

  @override
  List<Object?> get props => [
        timings,
        date,
        meta,
      ];
}

@JsonSerializable(createToJson: false)
class DateModelRes extends Equatable {
  const DateModelRes({
    required this.readable,
    required this.timestamp,
    required this.hijri,
    required this.gregorian,
  });

  final String? readable;
  final String? timestamp;
  final Hijri? hijri;
  final DateModel? gregorian;
  factory DateModelRes.fromJson(Map<String, dynamic> json) =>
      _$DateModelResFromJson(json);

  @override
  List<Object?> get props => [
        readable,
        timestamp,
        hijri,
        gregorian,
      ];
}

@JsonSerializable(createToJson: false)
class DateModel extends Equatable {
  const DateModel({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
  });

  final String? date;
  final String? format;
  final String? day;
  final GregorianWeekday? weekday;
  final GregorianMonth? month;
  final String? year;
  final Designation? designation;
  factory DateModel.fromJson(Map<String, dynamic> json) =>
      _$DateModelFromJson(json);

  @override
  List<Object?> get props => [
        date,
        format,
        day,
        weekday,
        month,
        year,
        designation,
      ];
}

@JsonSerializable(createToJson: false)
class Designation extends Equatable {
  const Designation({
    required this.abbreviated,
    required this.expanded,
  });

  final String? abbreviated;
  final String? expanded;
  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);

  @override
  List<Object?> get props => [
        abbreviated,
        expanded,
      ];
}

@JsonSerializable(createToJson: false)
class GregorianMonth extends Equatable {
  const GregorianMonth({
    required this.number,
    required this.en,
  });

  final int? number;

  final String? en;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$GregorianMonthFromJson(json);

  @override
  List<Object?> get props => [
        number,
        en,
      ];
}

@JsonSerializable(createToJson: false)
class GregorianWeekday extends Equatable {
  const GregorianWeekday({
    required this.en,
  });

  final String? en;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      _$GregorianWeekdayFromJson(json);

  @override
  List<Object?> get props => [
        en,
      ];
}

@JsonSerializable(createToJson: false)
class Hijri extends Equatable {
  const Hijri({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
    required this.holidays,
  });

  final String? date;

  final String? format;

  final String? day;

  final HijriWeekday? weekday;

  final HijriMonth? month;

  final String? year;

  final Designation? designation;

  final List<dynamic>? holidays;

  factory Hijri.fromJson(Map<String, dynamic> json) => _$HijriFromJson(json);

  @override
  List<Object?> get props => [
        date,
        format,
        day,
        weekday,
        month,
        year,
        designation,
        holidays,
      ];
}

@JsonSerializable(createToJson: false)
class HijriMonth extends Equatable {
  const HijriMonth({
    required this.number,
    required this.en,
    required this.ar,
  });

  final int? number;

  final String? en;

  final String? ar;

  factory HijriMonth.fromJson(Map<String, dynamic> json) =>
      _$HijriMonthFromJson(json);

  @override
  List<Object?> get props => [
        number,
        en,
        ar,
      ];
}

@JsonSerializable(createToJson: false)
class HijriWeekday extends Equatable {
  const HijriWeekday({
    required this.en,
    required this.ar,
  });

  final String? en;

  final String? ar;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) =>
      _$HijriWeekdayFromJson(json);

  @override
  List<Object?> get props => [
        en,
        ar,
      ];
}

@JsonSerializable(createToJson: false)
class LocationModel extends Equatable {
  const LocationModel({
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.method,
    required this.latitudeAdjustmentMethod,
    required this.midnightMode,
    required this.school,
    required this.offset,
  });

  final double? latitude;

  final double? longitude;

  final String? timezone;

  final Method? method;

  final String? latitudeAdjustmentMethod;

  final String? midnightMode;

  final String? school;

  final Map<String, int>? offset;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        timezone,
        method,
        latitudeAdjustmentMethod,
        midnightMode,
        school,
        offset,
      ];
}

@JsonSerializable(createToJson: false)
class Method extends Equatable {
  const Method({
    required this.id,
    required this.name,
    required this.params,
    required this.location,
  });

  final int? id;

  final String? name;

  final Params? params;

  final Location? location;

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        params,
        location,
      ];
}

@JsonSerializable(createToJson: false)
class Location extends Equatable {
  const Location({
    required this.latitude,
    required this.longitude,
  });

  final double? latitude;

  final double? longitude;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
      ];
}

@JsonSerializable(createToJson: false)
class Params extends Equatable {
  const Params({
    required this.fajr,
    required this.isha,
  });

  @JsonKey(name: 'Fajr')
  final double? fajr;

  @JsonKey(name: 'Isha')
  final double? isha;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);

  @override
  List<Object?> get props => [
        fajr,
        isha,
      ];
}

@JsonSerializable(createToJson: true)
class Timings extends Equatable {
  const Timings({
    required this.fajr,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.sunset,
    required this.maghrib,
    required this.isha,
    required this.imsak,
    required this.midnight,
    required this.firstthird,
    required this.lastthird,
  });

  @JsonKey(name: 'Fajr')
  final String? fajr;

  @JsonKey(name: 'Sunrise')
  final String? sunrise;

  @JsonKey(name: 'Dhuhr')
  final String? dhuhr;

  @JsonKey(name: 'Asr')
  final String? asr;

  @JsonKey(name: 'Sunset')
  final String? sunset;

  @JsonKey(name: 'Maghrib')
  final String? maghrib;

  @JsonKey(name: 'Isha')
  final String? isha;

  @JsonKey(name: 'Imsak')
  final String? imsak;

  @JsonKey(name: 'Midnight')
  final String? midnight;

  @JsonKey(name: 'Firstthird')
  final String? firstthird;

  @JsonKey(name: 'Lastthird')
  final String? lastthird;

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);

  Map<String, dynamic> toJson() => _$TimingsToJson(this);

  @override
  List<Object?> get props => [
        fajr,
        sunrise,
        dhuhr,
        asr,
        sunset,
        maghrib,
        isha,
        imsak,
        midnight,
        firstthird,
        lastthird,
      ];
}
