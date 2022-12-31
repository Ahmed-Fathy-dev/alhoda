import 'package:equatable/equatable.dart';

class JuzzModel extends Equatable {
  final int id;
  final String name;
  final IndexModel indexModel;
  final List<HezbModel> hezb;
  final bool bookmark;

  const JuzzModel({
    required this.id,
    required this.name,
    required this.indexModel,
    required this.hezb,
    required this.bookmark,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        indexModel,
        hezb,
        bookmark,
      ];
}

class HezbModel extends Equatable {
  final int id;
  final int page;
  final List<PartModel> part;

  const HezbModel({
    required this.id,
    required this.page,
    required this.part,
  });

  @override
  List<Object?> get props => [
        id,
        num,
        page,
        part,
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
  final int from;
  final int to;

  const IndexModel({
    required this.from,
    required this.to,
  });

  @override
  List<Object?> get props => [
        from,
        to,
      ];
}
