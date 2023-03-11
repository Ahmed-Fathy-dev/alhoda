import 'models/juzz_model.dart';

const juzzList = <JuzzModel>[
  JuzzModel(
    id: 1,
    name: 'الأول',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          id: 1,
          page: 1,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 5,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 7,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 9,
            ),
          ),
        ),
        secondHezb: HezbModel(
          id: 2,
          page: 11,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 14,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 17,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 19,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 1,
      to: 21,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 2,
    name: 'الثاني',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          id: 3,
          page: 22,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 24,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 27,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 29,
            ),
          ),
        ),
        secondHezb: HezbModel(
          id: 4,
          page: 32,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 34,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 37,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 39,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 22,
      to: 41,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 3,
    name: 'الثالث',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          id: 3,
          page: 42,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 44,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 47,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 49,
            ),
          ),
        ),
        secondHezb: HezbModel(
          id: 6,
          page: 51,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 54,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 56,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 59,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 42,
      to: 61,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 4,
    name: 'الرابع',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          id: 7,
          page: 62,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 64,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 67,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 69,
            ),
          ),
        ),
        secondHezb: HezbModel(
          id: 8,
          page: 72,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 74,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 77,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 79,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 62,
      to: 81,
    ),
    bookmark: false,
  ),
];

/*
JuzzModel(
    id: 3,
    name: 'الثاني',
    hezbCollection: HezbCollection (
   
  
  halfHezb:
    hezbCollection: HezbCollection (
   
  
  threeQuartersHezb: 
    hezbCollection: HezbCollection (
   
    secondHezb: HezbModel(id: id, page: page, part:PartCollection(quarterHezb: PartModel(percent: percent, page: page,),),)   firstHezb: HezbModel(id: id, page: page, part:PartCollection(quarterHezb: PartModel(percent: percent, page: page,),),),
    ),
    indexModel: IndexModel(
      from: 22,
      to: 41,
    ),
    bookmark: false,
  ),
 */