import 'package:equatable/equatable.dart';


class PageModel extends Equatable {
  final int id;
  final String name;
  final int index;
  final bool bookmark;



  const PageModel({
    required this.id,
    required this.name,
    required this.index,
    required this.bookmark,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        index,
        bookmark,
      ];
}
