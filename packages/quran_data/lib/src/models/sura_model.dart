import 'package:equatable/equatable.dart';
import 'juzz_model.dart';


class SuraModel extends Equatable {
  final int id;
  final String name;
  final int ayat;
  final int place;
  final IndexModel indexModel;
  final bool bookmark;


  const SuraModel({
    required this.id,
    required this.name,
    required this.ayat,
    required this.place,
    required this.indexModel,
    required this.bookmark,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        ayat,
        place,
        indexModel,
        bookmark,
      ];
}
