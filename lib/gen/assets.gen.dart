/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/color.xml
  String get color => 'assets/colors/color.xml';
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Helvetica-Bold.ttf
  String get helveticaBold => 'assets/fonts/Helvetica-Bold.ttf';

  /// File path: assets/fonts/Helvetica-light.ttf
  String get helveticaLight => 'assets/fonts/Helvetica-light.ttf';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_banner-1.png
  AssetGenImage get imgBanner1 =>
      const AssetGenImage('assets/images/img_banner-1.png');

  /// File path: assets/images/img_banner-2.png
  AssetGenImage get imgBanner2 =>
      const AssetGenImage('assets/images/img_banner-2.png');

  /// File path: assets/images/img_banner-3.png
  AssetGenImage get imgBanner3 =>
      const AssetGenImage('assets/images/img_banner-3.png');

  /// File path: assets/images/img_banner-4.png
  AssetGenImage get imgBanner4 =>
      const AssetGenImage('assets/images/img_banner-4.png');

  /// File path: assets/images/img_burger1.png
  AssetGenImage get imgBurger1 =>
      const AssetGenImage('assets/images/img_burger1.png');

  /// File path: assets/images/img_burger_koka.png
  AssetGenImage get imgBurgerKoka =>
      const AssetGenImage('assets/images/img_burger_koka.png');

  /// File path: assets/images/img_hotdog1.png
  AssetGenImage get imgHotdog1 =>
      const AssetGenImage('assets/images/img_hotdog1.png');

  /// File path: assets/images/img_kebab1.png
  AssetGenImage get imgKebab1 =>
      const AssetGenImage('assets/images/img_kebab1.png');

  /// File path: assets/images/img_kebab2.png
  AssetGenImage get imgKebab2 =>
      const AssetGenImage('assets/images/img_kebab2.png');

  /// File path: assets/images/img_mix1.png
  AssetGenImage get imgMix1 =>
      const AssetGenImage('assets/images/img_mix1.png');

  /// File path: assets/images/img_mix2.png
  AssetGenImage get imgMix2 =>
      const AssetGenImage('assets/images/img_mix2.png');

  /// File path: assets/images/img_pizza1.png
  AssetGenImage get imgPizza1 =>
      const AssetGenImage('assets/images/img_pizza1.png');

  /// File path: assets/images/img_pizza2.png
  AssetGenImage get imgPizza2 =>
      const AssetGenImage('assets/images/img_pizza2.png');

  /// File path: assets/images/img_pizza3.png
  AssetGenImage get imgPizza3 =>
      const AssetGenImage('assets/images/img_pizza3.png');

  /// File path: assets/images/img_pizza4.png
  AssetGenImage get imgPizza4 =>
      const AssetGenImage('assets/images/img_pizza4.png');

  /// File path: assets/images/img_sandwich1.png
  AssetGenImage get imgSandwich1 =>
      const AssetGenImage('assets/images/img_sandwich1.png');

  /// File path: assets/images/user1.jpg
  AssetGenImage get user1 => const AssetGenImage('assets/images/user1.jpg');

  /// File path: assets/images/user2.jpg
  AssetGenImage get user2 => const AssetGenImage('assets/images/user2.jpg');

  /// File path: assets/images/user3.jpg
  AssetGenImage get user3 => const AssetGenImage('assets/images/user3.jpg');
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
