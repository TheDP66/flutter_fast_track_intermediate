import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../modules/adaptive/bindings/adaptive_binding.dart';
import '../modules/adaptive/views/adaptive_view.dart';
import '../modules/adaptive_platform/bindings/adaptive_platform_binding.dart';
import '../modules/adaptive_platform/views/adaptive_platform_view.dart';
import '../modules/animated_align/bindings/animated_align_binding.dart';
import '../modules/animated_align/views/animated_align_view.dart';
import '../modules/animated_builder/bindings/animated_builder_binding.dart';
import '../modules/animated_builder/views/animated_builder_view.dart';
import '../modules/animated_contain/bindings/animated_contain_binding.dart';
import '../modules/animated_contain/views/animated_contain_view.dart';
import '../modules/animated_container/bindings/animated_container_binding.dart';
import '../modules/animated_container/views/animated_container_view.dart';
import '../modules/animated_crossfade/bindings/animated_crossfade_binding.dart';
import '../modules/animated_crossfade/views/animated_crossfade_view.dart';
import '../modules/animated_opacity/bindings/animated_opacity_binding.dart';
import '../modules/animated_opacity/views/animated_opacity_view.dart';
import '../modules/animated_positioned/bindings/animated_positioned_binding.dart';
import '../modules/animated_positioned/views/animated_positioned_view.dart';
import '../modules/avatar_glow/bindings/avatar_glow_binding.dart';
import '../modules/avatar_glow/views/avatar_glow_view.dart';
import '../modules/backdrop_filter/bindings/backdrop_filter_binding.dart';
import '../modules/backdrop_filter/views/backdrop_filter_view.dart';
import '../modules/box_transition/bindings/box_transition_binding.dart';
import '../modules/box_transition/views/box_transition_view.dart';
import '../modules/carousel_slider/bindings/carousel_slider_binding.dart';
import '../modules/carousel_slider/views/carousel_slider_view.dart';
import '../modules/clip/bindings/clip_binding.dart';
import '../modules/clip/views/clip_view.dart';
import '../modules/constrained_box/bindings/constrained_box_binding.dart';
import '../modules/constrained_box/views/constrained_box_view.dart';
import '../modules/custom_paint/bindings/custom_paint_binding.dart';
import '../modules/custom_paint/views/custom_paint_view.dart';
import '../modules/expanded/bindings/expanded_binding.dart';
import '../modules/expanded/views/expanded_view.dart';
import '../modules/fade_trasition/bindings/fade_trasition_binding.dart';
import '../modules/fade_trasition/views/fade_trasition_view.dart';
import '../modules/fitted_box/bindings/fitted_box_binding.dart';
import '../modules/fitted_box/views/fitted_box_view.dart';
import '../modules/flexible/bindings/flexible_binding.dart';
import '../modules/flexible/views/flexible_view.dart';
import '../modules/hero/bindings/hero_binding.dart';
import '../modules/hero/views/hero_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layout_builder/bindings/layout_builder_binding.dart';
import '../modules/layout_builder/views/layout_builder_view.dart';
import '../modules/lottie/bindings/lottie_binding.dart';
import '../modules/lottie/views/lottie_view.dart';
import '../modules/media_query/bindings/media_query_binding.dart';
import '../modules/media_query/views/media_query_view.dart';
import '../modules/sliver/bindings/sliver_binding.dart';
import '../modules/sliver/views/sliver_view.dart';
import '../modules/wrap/bindings/wrap_binding.dart';
import '../modules/wrap/views/wrap_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MEDIA_QUERY,
      page: () => MediaQueryView(),
      binding: MediaQueryBinding(),
    ),
    GetPage(
      name: _Paths.FLEXIBLE,
      page: () => const FlexibleView(),
      binding: FlexibleBinding(),
    ),
    GetPage(
      name: _Paths.EXPANDED,
      page: () => const ExpandedView(),
      binding: ExpandedBinding(),
    ),
    GetPage(
      name: _Paths.FITTED_BOX,
      page: () => const FittedBoxView(),
      binding: FittedBoxBinding(),
    ),
    GetPage(
      name: _Paths.WRAP,
      page: () => const WrapView(),
      binding: WrapBinding(),
    ),
    GetPage(
      name: _Paths.LAYOUT_BUILDER,
      page: () => LayoutBuilderView(),
      binding: LayoutBuilderBinding(),
    ),
    GetPage(
      name: _Paths.CONSTRAINED_BOX,
      page: () => const ConstrainedBoxView(),
      binding: ConstrainedBoxBinding(),
    ),
    GetPage(
      name: _Paths.ADAPTIVE,
      page: () => const AdaptiveView(),
      binding: AdaptiveBinding(),
    ),
    GetPage(
      name: _Paths.ADAPTIVE_PLATFORM,
      page: () => const AdaptivePlatformView(),
      binding: AdaptivePlatformBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CONTAINER,
      page: () => const AnimatedContainerView(),
      binding: AnimatedContainerBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_ALIGN,
      page: () => const AnimatedAlignView(),
      binding: AnimatedAlignBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CROSSFADE,
      page: () => const AnimatedCrossfadeView(),
      binding: AnimatedCrossfadeBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_OPACITY,
      page: () => const AnimatedOpacityView(),
      binding: AnimatedOpacityBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_POSITIONED,
      page: () => const AnimatedPositionedView(),
      binding: AnimatedPositionedBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_BUILDER,
      page: () => const AnimatedBuilderView(),
      binding: AnimatedBuilderBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATED_CONTAIN,
      page: () => const AnimatedContainView(),
      binding: AnimatedContainBinding(),
    ),
    GetPage(
      name: _Paths.BOX_TRANSITION,
      page: () => BoxTransitionView(),
      binding: BoxTransitionBinding(),
    ),
    GetPage(
      name: _Paths.AVATAR_GLOW,
      page: () => AvatarGlowView(),
      binding: AvatarGlowBinding(),
    ),
    GetPage(
      name: _Paths.FADE_TRASITION,
      page: () => FadeTrasitionView(),
      binding: FadeTrasitionBinding(),
    ),
    GetPage(
      name: _Paths.LOTTIE,
      page: () => const LottieView(),
      binding: LottieBinding(),
    ),
    GetPage(
      name: _Paths.HERO,
      page: () => const HeroView(),
      binding: HeroBinding(),
    ),
    GetPage(
      name: _Paths.CLIP,
      page: () => const ClipView(),
      binding: ClipBinding(),
    ),
    GetPage(
      name: _Paths.BACKDROP_FILTER,
      page: () => const BackdropFilterView(),
      binding: BackdropFilterBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_PAINT,
      page: () => const CustomPaintView(),
      binding: CustomPaintBinding(),
    ),
    GetPage(
      name: _Paths.CAROUSEL_SLIDER,
      page: () => const CarouselSliderView(),
      binding: CarouselSliderBinding(),
    ),
    GetPage(
      name: _Paths.SLIVER,
      page: () => const SliverView(),
      binding: SliverBinding(),
    ),
  ];
}
