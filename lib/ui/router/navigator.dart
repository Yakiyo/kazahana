import 'package:flutter/material.dart';

export '../pages/anilist/route.dart';
export '../pages/home/route.dart';
export '../pages/modules/route.dart';
export '../pages/search/route.dart';
export '../pages/settings/route.dart';
export '../pages/view/route.dart';

class RoutePusher {
  const RoutePusher(this.navigator);

  final NavigatorState navigator;
}

extension NavigatorStateUtils on NavigatorState {
  RoutePusher get pusher => RoutePusher(this);
}
