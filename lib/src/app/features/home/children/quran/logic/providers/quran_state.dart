import 'package:equatable/equatable.dart';

import '../model/quran_model.dart';

class QuranState extends Equatable {
  final int? index;
  final List<QuranModel> data;

  const QuranState({
    this.index,
    this.data = const [],
  });

  QuranState copyWith({
    int? index,
    List<QuranModel>? data,
  }) {
    return QuranState(
      data: data ?? this.data,
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [index, data];
}
