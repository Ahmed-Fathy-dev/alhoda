import 'models/juzz_model.dart';

const juzzList = <JuzzModel>[
  JuzzModel(
    id: 1,
    name: 'الأول',
    hezb: <HezbModel>[
      HezbModel(
        id: 1,
        page: 1,
        part: <PartModel>[
          PartModel(
            page: 5,
            percent: .25,
          ),
          PartModel(
            page: 7,
            percent: .5,
          ),
          PartModel(
            page: 9,
            percent: .75,
          ),
        ],
      ),
      HezbModel(
        id: 2,
        page: 11,
        part: <PartModel>[
          PartModel(
            page: 14,
            percent: .25,
          ),
          PartModel(
            page: 17,
            percent: .5,
          ),
          PartModel(
            page: 19,
            percent: .75,
          ),
        ],
      ),
    ],
    indexModel: IndexModel(
      from: 1,
      to: 21,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 2,
    name: 'الثاني',
    hezb: <HezbModel>[
      HezbModel(
        id: 3,
        page: 22,
        part: <PartModel>[
          PartModel(
            page: 24,
            percent: .25,
          ),
          PartModel(
            page: 27,
            percent: .5,
          ),
          PartModel(
            page: 29,
            percent: .75,
          ),
        ],
      ),
      HezbModel(
        id: 4,
        page: 32,
        part: <PartModel>[
          PartModel(
            page: 34,
            percent: .25,
          ),
          PartModel(
            page: 37,
            percent: .5,
          ),
          PartModel(
            page: 39,
            percent: .75,
          ),
        ],
      ),
    ],
    indexModel: IndexModel(
      from: 22,
      to: 41,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 3,
    name: 'الثالث',
    hezb: <HezbModel>[
      HezbModel(
        id: 5,
        page: 42,
        part: <PartModel>[
          PartModel(
            page: 44,
            percent: .25,
          ),
          PartModel(
            page: 47,
            percent: .5,
          ),
          PartModel(
            page: 49,
            percent: .75,
          ),
        ],
      ),
      HezbModel(
        id: 6,
        page: 51,
        part: <PartModel>[
          PartModel(
            page: 54,
            percent: .25,
          ),
          PartModel(
            page: 56,
            percent: .5,
          ),
          PartModel(
            page: 59,
            percent: .75,
          ),
        ],
      ),
    ],
    indexModel: IndexModel(
      from: 42,
      to: 61,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 4,
    name: 'الرابع',
    hezb: <HezbModel>[
      HezbModel(
        id: 7,
        page: 62,
        part: <PartModel>[
          PartModel(
            page: 64,
            percent: .25,
          ),
          PartModel(
            page: 67,
            percent: .5,
          ),
          PartModel(
            page: 69,
            percent: .75,
          ),
        ],
      ),
      HezbModel(
        id: 8,
        page: 72,
        part: <PartModel>[
          PartModel(
            page: 74,
            percent: .25,
          ),
          PartModel(
            page: 77,
            percent: .5,
          ),
          PartModel(
            page: 79,
            percent: .75,
          ),
        ],
      ),
    ],
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
    hezb: <HezbModel>[
      HezbModel(
        id: 5,
        page: 22,
        part: <PartModel>[
          PartModel(
            page: 24,
            percent: .25,
          ),
          PartModel(
            page: 27,
            percent: .5,
          ),
          PartModel(
            page: 29,
            percent: .75,
          ),
        ],
      ),
      HezbModel(
        id: 6,
        page: 22,
        part: <PartModel>[
          PartModel(
            page: 34,
            percent: .25,
          ),
          PartModel(
            page: 37,
            percent: .5,
          ),
          PartModel(
            page: 39,
            percent: .75,
          ),
        ],
      ),
    ],
    indexModel: IndexModel(
      from: 22,
      to: 41,
    ),
    bookmark: false,
  ),
 */