import 'models/juzz_model.dart';

const juzzList = <JuzzModel>[
  JuzzModel(
    id: 1,
    name: 'الأول',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الاول',
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
          name: 'الحزب الثاني',
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
          name: 'الحزب الثالث',
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
          name: 'الحزب الرابع',
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
          name: 'الحزب الخامس',
          id: 5,
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
          name: 'الحزب السادس',
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
          name: 'الحزب السابع',
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
          name: 'الحزب الثامن',
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
  JuzzModel(
    id: 5,
    name: 'الخامس',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع',
          id: 9,
          page: 82,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 84,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 87,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 89,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب العاشر',
          id: 9,
          page: 92,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 94,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 97,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 100,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 82,
      to: 101,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 6,
    name: 'السادس',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الحادي عشر',
          id: 11,
          page: 102,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 104,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 106,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 109,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: ' الحزب الثاني عشر',
          id: 12,
          page: 112,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 114,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 117,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 119,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 102,
      to: 120,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 7,
    name: 'السابع',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الثالث عشر',
          id: 13,
          page: 121,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 124,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 126,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 129,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الرابع عشر',
          id: 2,
          page: 132,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 134,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 137,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 140,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 121,
      to: 141,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 8,
    name: 'الثامن',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الخامس عشر',
          id: 15,
          page: 142,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 144,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 146,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 148,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب السادس عشر',
          id: 16,
          page: 151,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 154,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 156,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 158,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 142,
      to: 161,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 9,
    name: 'التاسع',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب السابع عشر',
          id: 17,
          page: 162,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 164,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 167,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 170,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثامن عشر',
          id: 2,
          page: 173,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 175,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 177,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 179,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 162,
      to: 181,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 10,
    name: 'العاشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع عشر',
          id: 19,
          page: 182,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 184,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 187,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 189,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب العشرون',
          id: 20,
          page: 192,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 194,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 196,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 199,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 182,
      to: 200,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 11,
    name: 'الحادي عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الحادي والعشرون',
          id: 21,
          page: 201,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 204,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 206,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 209,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثاني والعشرون',
          id: 22,
          page: 212,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 214,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 217,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 219,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 201,
      to: 221,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 12,
    name: 'الثاني عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الثالث والعشرون',
          id: 23,
          page: 222,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 224,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 226,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 228,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الرابع والعشرون',
          id: 24,
          page: 231,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 233,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 236,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 238,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 222,
      to: 241,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 13,
    name: 'الثالث عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الخامس والعشرون',
          id: 25,
          page: 242,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 244,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 247,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 249,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب السادس والعشرون',
          id: 26,
          page: 252,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 254,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 256,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 259,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 242,
      to: 261,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 14,
    name: 'الرابع عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب السابع والعشرون',
          id: 27,
          page: 262,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 264,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 267,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 270,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثامن والعشرون',
          id: 28,
          page: 272,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 275,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 277,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 280,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 262,
      to: 281,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 15,
    name: 'الخامس عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع والعشرون',
          id: 29,
          page: 282,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 284,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 287,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 289,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثلاثون',
          id: 30,
          page: 292,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 295,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 297,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 299,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 282,
      to: 301,
    ),
    bookmark: false,
  ),
  JuzzModel(
    id: 16,
    name: 'السادس عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الحادي والثلاثون',
          id: 31,
          page: 302,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 304,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 306,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 309,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثاني والثلاثون',
          id: 32,
          page: 312,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 315,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 317,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 319,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 302,
      to: 321,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 17,
    name: 'السابع عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الثالث والثلاثون',
          id: 33,
          page: 322,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 324,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 326,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 329,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الرابع والثلاثون',
          id: 34,
          page: 332,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 334,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 336,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 339,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 322,
      to: 341,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 18,
    name: 'الثامن عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الخامس والثلاثون',
          id: 35,
          page: 342,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 344,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 347,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 350,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب السادس والثلاثون',
          id: 36,
          page: 352,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 354,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 356,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 359,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 342,
      to: 361,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 19,
    name: 'التاسع عشر',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب السابع والثلاثون',
          id: 37,
          page: 362,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 364,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 367,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 369,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثامن والثلاثون',
          id: 38,
          page: 371,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 374,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 377,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 379,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 362,
      to: 381,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 20,
    name: 'العشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع والثلاثون',
          id: 39,
          page: 382,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 384,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 386,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 389,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الأربعون',
          id: 40,
          page: 392,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 394,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 396,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 399,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 382,
      to: 401,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 21,
    name: 'الحادي والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الحادي والأربعون',
          id: 41,
          page: 402,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 404,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 407,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 410,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثاني والأربعون',
          id: 42,
          page: 413,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 415,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 418,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 420,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 402,
      to: 421,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 22,
    name: 'الثاني والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الثالث والأربعون',
          id: 43,
          page: 422,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 425,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 426,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 429,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الرابع والأربعون',
          id: 44,
          page: 431,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 433,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 436,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 439,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 422,
      to: 441,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 23,
    name: 'الثالث والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الخامس والأربعون',
          id: 45,
          page: 442,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 444,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 446,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 449,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب السادس والأربعون',
          id: 46,
          page: 451,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 454,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 456,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 459,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 442,
      to: 461,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 24,
    name: 'الرابع والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب السابع والأربعون',
          id: 47,
          page: 462,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 464,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 467,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 469,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثامن والأربعون',
          id: 48,
          page: 472,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 474,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 477,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 479,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 462,
      to: 481,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 25,
    name: 'الخامس والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع والأربعون',
          id: 49,
          page: 482,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 484,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 486,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 488,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الخمسون',
          id: 50,
          page: 491,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 493,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 496,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 499,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 482,
      to: 501,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 26,
    name: 'السادس والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الحادي والخمسون',
          id: 51,
          page: 502,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 505,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 507,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 510,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثاني والخمسون',
          id: 52,
          page: 513,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 515,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 517,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 519,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 502,
      to: 521,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 27,
    name: 'السابع والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الثالث والخمسون',
          id: 53,
          page: 522,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 524,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 526,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 529,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الرابع والخمسون',
          id: 54,
          page: 531,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 534,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 536,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 539,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 522,
      to: 541,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 28,
    name: 'الثامن والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب الخامس والخمسون',
          id: 55,
          page: 542,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 544,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 547,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 550,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب السادس والخمسون',
          id: 56,
          page: 553,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 554,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 558,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 560,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 542,
      to: 561,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 29,
    name: 'التاسع والعشرون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب السابع والخمسون',
          id: 57,
          page: 562,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 564,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 566,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 569,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الثامن والخمسون',
          id: 58,
          page: 572,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 575,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 577,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 579,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 562,
      to: 581,
    ),
    bookmark: false,
  ),JuzzModel(
    id: 30,
    name: 'الثلاثون',
    hezbCollection: HezbCollection(
        firstHezb: HezbModel(
          name: 'الحزب التاسع والخمسون',
          id: 1,
          page: 582,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 585,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 587,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 589,
            ),
          ),
        ),
        secondHezb: HezbModel(
          name: 'الحزب الستون',
          id: 60,
          page: 591,
          part: PartCollection(
            quarterHezb: PartModel(
              percent: .25,
              page: 594,
            ),
            halfHezb: PartModel(
              percent: .5,
              page: 596,
            ),
            threeQuartersHezb: PartModel(
              percent: .75,
              page: 599,
            ),
          ),
        )),
    indexModel: IndexModel(
      from: 582,
      to: 604,
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