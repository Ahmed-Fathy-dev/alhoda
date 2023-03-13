import 'package:equatable/equatable.dart';

class QuranParam extends Equatable {
  final int? index;
  final int? juzzId;
  final int? hezbId;
  final double? part;
  final int? suraId;
  final String? filter;
  final int? page;

  const QuranParam( {
    this.page,
    this.index,
    this.juzzId,
    this.hezbId,
    this.part,
    this.suraId,
    this.filter,
  });

  @override
  List<Object?> get props => [
        index,
        juzzId,
        hezbId,
        part,
        suraId,
        filter,
        page
      ];
}
