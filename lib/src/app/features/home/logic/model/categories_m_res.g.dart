// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_m_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesMRes _$CategoriesMResFromJson(Map<String, dynamic> json) =>
    CategoriesMRes(
      message: json['message'] as String?,
      success: json['success'] as bool?,
      status: json['status'] as int?,
      categoryModel: json['categoryModel'] == null
          ? null
          : CategoryModel.fromJson(
              json['categoryModel'] as Map<String, dynamic>),
    );

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as int,
      imgUrl: json['imgUrl'] as String,
      title: json['title'] as String,
      catKey: json['catKey'] as String,
    );
