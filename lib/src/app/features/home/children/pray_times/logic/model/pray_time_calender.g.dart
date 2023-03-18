// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pray_time_calender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalenderMRes _$CalenderMResFromJson(Map<String, dynamic> json) => CalenderMRes(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PrayCalenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

PrayCalenderModel _$PrayCalenderModelFromJson(Map<String, dynamic> json) =>
    PrayCalenderModel(
      timings: json['timings'] == null
          ? null
          : Timings.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Date _$DateFromJson(Map<String, dynamic> json) => Date(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      gregorian: json['gregorian'] == null
          ? null
          : Gregorian.fromJson(json['gregorian'] as Map<String, dynamic>),
      hijri: json['hijri'] == null
          ? null
          : Hijri.fromJson(json['hijri'] as Map<String, dynamic>),
    );

Gregorian _$GregorianFromJson(Map<String, dynamic> json) => Gregorian(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : GregorianWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : GregorianMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : Designation.fromJson(json['designation'] as Map<String, dynamic>),
    );

Designation _$DesignationFromJson(Map<String, dynamic> json) => Designation(
      abbreviated: json['abbreviated'] as String?,
      expanded: json['expanded'] as String?,
    );

GregorianMonth _$GregorianMonthFromJson(Map<String, dynamic> json) =>
    GregorianMonth(
      number: json['number'] as int?,
      en: json['en'] as String?,
    );

GregorianWeekday _$GregorianWeekdayFromJson(Map<String, dynamic> json) =>
    GregorianWeekday(
      en: json['en'] as String?,
    );

Hijri _$HijriFromJson(Map<String, dynamic> json) => Hijri(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : HijriWeekday.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : HijriMonth.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : Designation.fromJson(json['designation'] as Map<String, dynamic>),
      holidays: json['holidays'] as List<dynamic>?,
    );

HijriMonth _$HijriMonthFromJson(Map<String, dynamic> json) => HijriMonth(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

HijriWeekday _$HijriWeekdayFromJson(Map<String, dynamic> json) => HijriWeekday(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
      offset: (json['offset'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      id: json['id'] as int?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : Params.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Params _$ParamsFromJson(Map<String, dynamic> json) => Params(
      fajr: (json['Fajr'] as num?)?.toDouble(),
      isha: (json['Isha'] as num?)?.toDouble(),
    );

Timings _$TimingsFromJson(Map<String, dynamic> json) => Timings(
      fajr: json['Fajr'] as String?,
      sunrise: json['Sunrise'] as String?,
      dhuhr: json['Dhuhr'] as String?,
      asr: json['Asr'] as String?,
      sunset: json['Sunset'] as String?,
      maghrib: json['Maghrib'] as String?,
      isha: json['Isha'] as String?,
      imsak: json['Imsak'] as String?,
      midnight: json['Midnight'] as String?,
      firstthird: json['Firstthird'] as String?,
      lastthird: json['Lastthird'] as String?,
    );
