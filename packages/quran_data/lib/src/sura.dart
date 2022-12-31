import 'models/juzz_model.dart';
import 'models/sura_model.dart';

const sura = <SuraModel>[
  SuraModel(
    id: 1,
    name: 'الفاتحة',
    ayat: 7,
    place: 0,
    bookmark: false,
    indexModel: IndexModel(
      from: 1,
      to: 1,
    ),
  ),
  SuraModel(
    id: 2,
    name: 'البقرة',
    ayat: 286,
    place: 1,
    bookmark: false,
    indexModel: IndexModel(
      from: 2,
      to: 49,
    ),
  ),
  SuraModel(
    id: 2,
    name: 'آل عمران',
    ayat: 200,
    place: 1,
    bookmark: false,
    indexModel: IndexModel(
      from: 50,
      to: 76,
    ),
  ),
];


/*
SuraModel(
    id: 1,
    name: 'الفاتحة',
    ayat: 7,
    place: 0,
    bookmark: false,
    indexModel: IndexModel(
      from: 1,
      to: 1,
    ),
  ),
 */