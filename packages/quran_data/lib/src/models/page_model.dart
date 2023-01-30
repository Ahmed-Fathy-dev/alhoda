import 'package:equatable/equatable.dart';

class PageModel extends Equatable {
  final int id;
  final String name;
  final int index;
  final int place;
  final bool bookmark;

  const PageModel({
    required this.id,
    required this.name,
    required this.index,
    required this.place,
    required this.bookmark,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        index,
        place,
        bookmark,
      ];
}
