import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class JuzzModel extends Equatable {
  final int id;
  final String name;
  final IndexModel indexModel;
  final HezbCollection hezbCollection;
  final bool bookmark;

  const JuzzModel({
    required this.id,
    required this.name,
    required this.indexModel,
    required this.hezbCollection,
    required this.bookmark,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        indexModel,
        hezbCollection,
        bookmark,
      ];
}

class HezbCollection extends Equatable {
  final HezbModel firstHezb;
  final HezbModel secondHezb;

  const HezbCollection({
    required this.firstHezb,
    required this.secondHezb,
  });

  @override
  List<Object?> get props => [
        firstHezb,
        secondHezb,
      ];
}

class HezbModel extends Equatable {
  final String name;
  final int id;
  final int page;
  final PartCollection part;

  const HezbModel({
    required this.name,
    required this.id,
    required this.page,
    required this.part,
  });

  @override
  List<Object?> get props => [
        id,
        page,
        part,
        name,
      ];
}

class PartCollection extends Equatable {
  final PartModel quarterHezb;
  final PartModel halfHezb;
  final PartModel threeQuartersHezb;

  const PartCollection({
    required this.quarterHezb,
    required this.halfHezb,
    required this.threeQuartersHezb,
  });

  @override
  List<Object?> get props => [
        quarterHezb,
        halfHezb,
        threeQuartersHezb,
      ];
}

class PartModel extends Equatable {
  final double percent;
  final int page;

  const PartModel({
    required this.percent,
    required this.page,
  });

  @override
  List<Object?> get props => [
        percent,
        page,
      ];
}

class IndexModel extends Equatable {
  final int? from;
  final int? to;

  const IndexModel({
    this.from,
    this.to,
  });

  @override
  List<Object?> get props => [
        from,
        to,
      ];
}
