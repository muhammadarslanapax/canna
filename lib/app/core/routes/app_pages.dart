import 'package:canna/app/modules/auth/signup/views/signup_with_bud_tender_view.dart';
import 'package:canna/app/modules/auth/signup/views/signup_with_user_info_view.dart';
import 'package:canna/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:canna/app/modules/onboarding/views/onboarding01_view.dart';
import 'package:canna/app/modules/onboarding/views/onboarding_view.dart';
import 'package:get/get.dart';
import 'package:canna/app/modules/AppDashBoard/dashboard/bindings/dashboard_binding.dart';
import 'package:canna/app/modules/AppDashBoard/dashboard/views/dashboard_view.dart';
import 'package:canna/app/modules/AppDashBoard/home/bindings/home_binding.dart';
import 'package:canna/app/modules/AppDashBoard/home/views/home_view.dart';
import 'package:canna/app/modules/auth/login/bindings/login_binding.dart';
import 'package:canna/app/modules/auth/login/views/login_view.dart';
import 'package:canna/app/modules/auth/profile/bindings/profile_binding.dart';
import 'package:canna/app/modules/auth/profile/views/profile_view.dart';
import 'package:canna/app/modules/auth/signup/bindings/signup_binding.dart';
import 'package:canna/app/modules/auth/signup/views/signup_view.dart';
import 'package:canna/app/modules/AppDashBoard/cart/bindings/cart_binding.dart';
import 'package:canna/app/modules/AppDashBoard/cart/views/cart_view.dart';
import 'package:canna/app/modules/AppDashBoard/event/bindings/event_binding.dart';
import 'package:canna/app/modules/AppDashBoard/event/views/event_view.dart';
import 'package:canna/app/modules/AppDashBoard/favourite/bindings/favourite_binding.dart';
import 'package:canna/app/modules/AppDashBoard/favourite/views/favourite_view.dart';
import 'package:canna/app/modules/AppDashBoard/map/bindings/map_binding.dart';
import 'package:canna/app/modules/AppDashBoard/map/views/map_view.dart';
import 'package:canna/app/modules/AppDashBoard/scan/bindings/scan_binding.dart';
import 'package:canna/app/modules/AppDashBoard/scan/views/scan_view.dart';
import 'package:canna/app/modules/AppDashBoard/shop/bindings/shop_binding.dart';
import 'package:canna/app/modules/AppDashBoard/shop/views/shop_view.dart';
import 'package:canna/app/modules/splash/bindings/splash_binding.dart';
import 'package:canna/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGNUPWITHBUDTENDER;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPWITHUSERINFO,
      page: () => SignupWithUserInfoView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPWITHBUDTENDER,
      page: () => SignupWithBudTenderView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => FavouriteView(),
      binding: FavouriteBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.SCAN,
      page: () => ScanView(),
      binding: ScanBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING01,
      page: () => Onboarding01View(),
      binding: OnboardingBinding(),
    ),
  ];
}
