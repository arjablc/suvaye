import 'dart:ui';

import '../constants/asset_paths.dart';
import '../model/outlines_model.dart';

class OutlinesController {
  final List<OutlinesModel> _outlineList = [
    OutlinesModel(
        title: "Apps",
        iconUrl: ImageAssetPath.mobileSocialNetworkingIcon,
        color: const Color(0xffF9F5FF)),
    OutlinesModel(
        title: "Website",
        iconUrl: ImageAssetPath.webIcon,
        color: const Color(0xffFDF2FA)),
    OutlinesModel(
        title: "Designs",
        iconUrl: ImageAssetPath.vectorIcon,
        color: const Color(0xffFFFAF5)),
    OutlinesModel(
        title: "Consultant",
        iconUrl: ImageAssetPath.consultationIcon,
        color: const Color(0xffF0F9FF)),
  ];

  List<OutlinesModel> get outlineList => [..._outlineList];
}
