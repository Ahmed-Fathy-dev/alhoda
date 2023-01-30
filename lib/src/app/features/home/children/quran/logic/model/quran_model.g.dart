// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranModelResponse _$QuranModelResponseFromJson(Map<String, dynamic> json) =>
    QuranModelResponse(
      (json['data'] as List<dynamic>)
          .map((e) => QuranModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

QuranModel _$QuranModelFromJson(Map<String, dynamic> json) => QuranModel(
      bookmark: json['bookmark'] as bool? ?? false,
      direction: json['direction'] as int,
      index: json['index'] as int,
      juzz: json['juzz'] == null
          ? null
          : JuzzM.fromJson(json['juzz'] as Map<String, dynamic>),
      sura: json['sura'] == null
          ? null
          : SuraM.fromJson(json['sura'] as Map<String, dynamic>),
      page: json['page'] as String,
    );

JuzzM _$JuzzMFromJson(Map<String, dynamic> json) => JuzzM(
      id: json['id'] as int,
      name: json['name'] as String,
      hezb: json['hezb'] == null
          ? null
          : HezbM.fromJson(json['hezb'] as Map<String, dynamic>),
    );

HezbM _$HezbMFromJson(Map<String, dynamic> json) => HezbM(
      id: json['id'] as int,
      name: json['name'] as String,
      part: (json['part'] as num?)?.toDouble(),
    );

SuraM _$SuraMFromJson(Map<String, dynamic> json) => SuraM(
      id: json['id'] as int,
      ayat: json['ayat'] as int,
      name: json['name'] as String,
      place: json['place'] as int,
    );
