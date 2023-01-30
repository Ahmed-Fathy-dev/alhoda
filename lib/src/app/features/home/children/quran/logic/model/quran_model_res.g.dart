// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model_res.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuranResponseAdapter extends TypeAdapter<QuranResponse> {
  @override
  final int typeId = 1;

  @override
  QuranResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuranResponse()..quranData = (fields[0] as List).cast<QuranModel>();
  }

  @override
  void write(BinaryWriter writer, QuranResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.quranData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuranResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuranModelAdapter extends TypeAdapter<QuranModel> {
  @override
  final int typeId = 2;

  @override
  QuranModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuranModel()
      ..bookmark = fields[1] as bool
      ..direction = fields[2] as int
      ..index = fields[3] as int
      ..juzz = fields[4] as JuzzM?
      ..sura = fields[5] as SuraM?
      ..page = fields[6] as String;
  }

  @override
  void write(BinaryWriter writer, QuranModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.bookmark)
      ..writeByte(2)
      ..write(obj.direction)
      ..writeByte(3)
      ..write(obj.index)
      ..writeByte(4)
      ..write(obj.juzz)
      ..writeByte(5)
      ..write(obj.sura)
      ..writeByte(6)
      ..write(obj.page);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuranModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class JuzzMAdapter extends TypeAdapter<JuzzM> {
  @override
  final int typeId = 3;

  @override
  JuzzM read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JuzzM()
      ..id = fields[7] as int
      ..name = fields[8] as String
      ..hezb = fields[9] as HezbM?;
  }

  @override
  void write(BinaryWriter writer, JuzzM obj) {
    writer
      ..writeByte(3)
      ..writeByte(7)
      ..write(obj.id)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(9)
      ..write(obj.hezb);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JuzzMAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HezbMAdapter extends TypeAdapter<HezbM> {
  @override
  final int typeId = 4;

  @override
  HezbM read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HezbM()
      ..id = fields[10] as int
      ..name = fields[11] as String;
  }

  @override
  void write(BinaryWriter writer, HezbM obj) {
    writer
      ..writeByte(2)
      ..writeByte(10)
      ..write(obj.id)
      ..writeByte(11)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HezbMAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SuraMAdapter extends TypeAdapter<SuraM> {
  @override
  final int typeId = 5;

  @override
  SuraM read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SuraM()
      ..id = fields[12] as int
      ..ayat = fields[13] as int
      ..name = fields[14] as String
      ..place = fields[15] as int;
  }

  @override
  void write(BinaryWriter writer, SuraM obj) {
    writer
      ..writeByte(4)
      ..writeByte(12)
      ..write(obj.id)
      ..writeByte(13)
      ..write(obj.ayat)
      ..writeByte(14)
      ..write(obj.name)
      ..writeByte(15)
      ..write(obj.place);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuraMAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
