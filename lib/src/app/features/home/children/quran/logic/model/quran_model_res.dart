import 'package:hive/hive.dart';

part 'quran_model_res.g.dart';

@HiveType(typeId: 1)
class QuranResponse extends HiveObject{
  @HiveField(0)
  late List<QuranModel> quranData;
}

@HiveType(typeId: 2)
class QuranModel extends HiveObject{
  @HiveField(1)
  late bool bookmark;
  @HiveField(2)
  late int direction;
  @HiveField(3)
  late int index;
  @HiveField(4)
  late JuzzM? juzz;
  @HiveField(5)
  late SuraM? sura;
  @HiveField(6)
  late String page;
}

@HiveType(typeId: 3)
class JuzzM extends HiveObject{
  @HiveField(7)
  late int id;
  @HiveField(8)
  late String name;
  @HiveField(9)
  late HezbM? hezb;
}

@HiveType(typeId: 4)
class HezbM extends HiveObject{
  @HiveField(10)
  late int id;
  @HiveField(11)
  late String name;
}

@HiveType(typeId: 5)
class SuraM extends HiveObject{
  @HiveField(12)
  late int id;
  @HiveField(13)
  late int ayat;
  @HiveField(14)
  late String name;
  @HiveField(15)
  late int place;
}
