import 'package:flutter_svg/flutter_svg.dart';

import '../constant/images_resource.dart';

/// This class is used for pre-caching Svg.
class SvgUtils {
  static List<SvgAssetLoader> svgAssets = [
    const SvgAssetLoader(ImagesResource.HOME_ACTIVE_ICON),
    const SvgAssetLoader(ImagesResource.HOME_INACTIVE_ICON),
    const SvgAssetLoader(ImagesResource.SEARCH_ACTIVE_ICON),
    const SvgAssetLoader(ImagesResource.SEARCH_INACTIVE_ICON),
    const SvgAssetLoader(ImagesResource.ARROW_BACK_ICON),
    const SvgAssetLoader(ImagesResource.SEARCH_DARK_ICON),
    const SvgAssetLoader(ImagesResource.EMPTY_LIST_ICON),
    const SvgAssetLoader(ImagesResource.SEARCH_NOT_FOUND_ICON),
  ];

  static Future<void> preCacheSVGs() async {
    for (var icons in svgAssets) {
      await svg.cache.putIfAbsent(
        icons.cacheKey(null),
        () => icons.loadBytes(null),
      );
    }
  }
}
