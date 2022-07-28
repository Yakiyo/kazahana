import 'package:kazahana/core/exports.dart';
import '../../pages/anilist/route.dart';
import '../../pages/home/route.dart';
import '../../pages/modules/route.dart';
import '../../pages/search/route.dart';
import '../../pages/settings/route.dart';
import '../../pages/view/route.dart';
import 'info.dart';
import 'page.dart';

abstract class RoutePages {
  static final HomePageRoute home = HomePageRoute();
  static final SearchPageRoute search = SearchPageRoute();
  static final ViewPageRoute view = ViewPageRoute();
  static final SettingsPageRoute settings = SettingsPageRoute();
  static final ModulesPageRoute modules = ModulesPageRoute();
  static final AnilistPageRoute anilist = AnilistPageRoute();

  static RoutePage? findMatch(final RouteInfo route) =>
      all.firstWhereOrNull((final RoutePage x) => x.matches(route));

  static List<RoutePage> get all => <RoutePage>[
        home,
        search,
        view,
        settings,
        modules,
        anilist,
      ];
}
