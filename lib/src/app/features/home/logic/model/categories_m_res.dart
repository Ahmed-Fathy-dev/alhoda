import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part "categories_m_res.g.dart";

@immutable
@JsonSerializable(createToJson: false)
class CategoriesMRes extends Equatable {
  final String? message;
  final bool? success;
  final int? status;
  final CategoryModel? categoryModel;

  const CategoriesMRes({
    this.message,
    this.success,
    this.status,
    this.categoryModel,
  });

  factory CategoriesMRes.fromJson(Map<String, dynamic> json) =>
      _$CategoriesMResFromJson(json);

  @override
  List<Object?> get props => [
        message,
        success,
        status,
      ];
}

@immutable
@JsonSerializable(createToJson: false)
class CategoryModel extends Equatable {
  final int id;
  final String imgUrl;
  final String title;
  final String catKey;

  const CategoryModel({
    required this.id,
    required this.imgUrl,
    required this.title,
    required this.catKey,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        imgUrl,
        title,
        catKey,
      ];
}
