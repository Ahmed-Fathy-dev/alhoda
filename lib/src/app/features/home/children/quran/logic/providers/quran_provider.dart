import 'package:alhoda/src/app/features/home/children/quran/logic/providers/quran_state.dart';
import 'package:alhoda/src/app/features/home/children/quran/logic/repo/quran_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../utilities/logger_util.dart';
import '../model/quran_model.dart';
import '../model/quran_param_model.dart';

final stateQuranNotifier = NotifierProvider<QuranNotifier, QuranState>(() {
  return QuranNotifier();
});

class QuranNotifier extends Notifier<QuranState> {
  @override
  QuranState build() {
    return const QuranState();
  }

  void getIndexFromParam(QuranParam quranParam) {
    logger.wtf(quranParam, 'quranParam from provider');
    logger.wtf(state.data, 'state.data from provider');

    Map<String, num?> paramMap = {
      'index': quranParam.index,
      'juzzId': quranParam.juzzId,
      'hezbId': quranParam.hezbId,
      'part': quranParam.part,
      'suraId': quranParam.suraId,
    };

    if (state.data.isNotEmpty) {
      if (paramMap['index'] != null) {
        state = state.copyWith(index: paramMap['index']!.toInt() - 1);
        logger.d(paramMap['index'], 'paramMap[index] from provider');
      } else if (paramMap['suraId'] != null) {
        state = state.copyWith(
          index: state.data.indexWhere(
            (element) => element.sura?.id == paramMap['suraId'],
          ),
        );
        logger.d(paramMap['suraId'], 'paramMap[suraId] from provider');
      } else if (paramMap['juzzId'] != null) {
        state = state.copyWith(
          index: state.data.indexWhere(
            (element) => element.juzz?.id == paramMap['juzzId'],
          ),
        );
        logger.d(paramMap['juzzId'], 'paramMap[juzzId] from provider');
      } else if (paramMap['hezbId'] != null) {
        state = state.copyWith(
          index: state.data.indexWhere(
            (element) => element.juzz?.hezb?.id == paramMap['hezbId'],
          ),
        );
        logger.d(paramMap['hezbId'], 'paramMap[hezbId] from provider');
      } else if (paramMap['part'] != null) {
        state = state.copyWith(
          index: state.data.indexWhere(
            (element) => element.juzz?.hezb?.part == paramMap['part'],
          ),
        );
        logger.d(paramMap['part'], 'paramMap[part] from provider');
      }
    }
  }

  void getQuranData(List<QuranModel> data) {
    logger.d(data, 'data from provider');
    state = state.copyWith(data: data);
    logger.d(state, 'data from provider');
  }
}


final quranProvier = FutureProvider.autoDispose<List<QuranModel>>((ref) async {
  final repo = ref.watch(quranRepoProvider);
  final data = await repo.getAllQuran();
  ref.watch(stateQuranNotifier.notifier).getQuranData(data.quranData);
  return data.quranData;
});
