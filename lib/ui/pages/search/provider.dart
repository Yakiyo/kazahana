import 'package:kazahana/core/exports.dart';

class SearchPageProvider extends StatedChangeNotifier {
  final StatedValue<TwinTuple<String, List<AnilistMedia>>> results =
      StatedValue<TwinTuple<String, List<AnilistMedia>>>();

  void reset() {
    results.waiting();
    notifyListeners();
  }

  Future<void> search(final String terms) async {
    results.loading();
    notifyListeners();

    try {
      results.finish(
        TwinTuple<String, List<AnilistMedia>>(
          terms,
          await AnilistMediaEndpoints.search(terms),
        ),
      );
    } catch (err, trace) {
      results.fail(err, trace);
    }
    if (!mounted) return;
    notifyListeners();
  }
}
