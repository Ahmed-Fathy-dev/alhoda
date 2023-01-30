import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quran_model.g.dart';

@JsonSerializable(createToJson: false)
class QuranModelResponse extends Equatable {
  @JsonKey(name: 'data')
  final List<QuranModel> quranData;

  const QuranModelResponse(this.quranData);

  factory QuranModelResponse.fromJson(Map<String, dynamic> json) =>
      _$QuranModelResponseFromJson(json);

  @override
  List<Object?> get props => [quranData];
}

@JsonSerializable(createToJson: false)
class QuranModel extends Equatable {
  final bool bookmark;
  final int direction;
  final int index;
  final JuzzM? juzz;
  final SuraM? sura;
  final String page;

  const QuranModel({
    this.bookmark = false,
    required this.direction,
    required this.index,
    this.juzz,
    this.sura,
    required this.page,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      _$QuranModelFromJson(json);

  @override
  List<Object?> get props => [
        bookmark,
        direction,
        index,
        juzz,
        sura,
        page,
      ];
}

@JsonSerializable(createToJson: false)
class JuzzM extends Equatable {
  final int id;
  final String name;
  final HezbM? hezb;

  const JuzzM({
    required this.id,
    required this.name,
    this.hezb,
  });

  factory JuzzM.fromJson(Map<String, dynamic> json) => _$JuzzMFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        hezb,
      ];
}

@JsonSerializable(createToJson: false)
class HezbM extends Equatable {
  final int id;
  final String name;
  final double? part;

  const HezbM({
    required this.id,
    required this.name,
    this.part,
  });

  factory HezbM.fromJson(Map<String, dynamic> json) => _$HezbMFromJson(json);

  @override
  List<Object?> get props => [
        id,
        name,
        part,
      ];
}

@JsonSerializable(createToJson: false)
class SuraM extends Equatable {
  final int id;
  final int ayat;
  final String name;
  final int place;

  const SuraM({
    required this.id,
    required this.ayat,
    required this.name,
    required this.place,
  });

  factory SuraM.fromJson(Map<String, dynamic> json) => _$SuraMFromJson(json);

  @override
  List<Object?> get props => [
        id,
        ayat,
        name,
        place,
      ];
}
