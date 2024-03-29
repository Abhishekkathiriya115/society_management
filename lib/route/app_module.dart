import 'package:society_management/binding/community_binding.dart';
import 'package:society_management/binding/function_hall_binding.dart';
import 'package:society_management/binding/theater_binding.dart';
import 'package:society_management/page/ui/community_page.dart';
import 'package:society_management/page/ui/function_hall_page.dart';
import 'package:society_management/page/ui/theater_page.dart';

import '../binding/home_binding.dart';
import '../binding/splash_binding.dart';
import '../page/ui/splash_page.dart';
import '../page/widget/bottom_navigationbar.dart';
import 'route.dart';
import 'package:get/route_manager.dart';

class AppPage {
  AppPage._();
  static final routes = [
    GetPage(
        name: AppRoute.splash,
        page: () =>  const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoute.home,
        page: () =>  const BottomNavigationPage(),
        binding: HomeBinding()),
    GetPage(
      name: AppRoute.communityPage,
      page: ()=> const CommunityPage(),
      binding:  CommunityBinding(),
    ),
    GetPage(
      name: AppRoute.theaterPage,
      page: ()=> const TheaterPage(),
      binding: TheaterBinding(),
    ),
    GetPage(
      name: AppRoute.functionHallPage,
      page: ()=> const FunctionHallPage(),
      binding: FunctionHallBinding(),
    ),
    // GetPage(
    //   name: AppRoute.login,
    //   page: () => const LoginPage(),
    //   binding: LoginBinding(),
    // ),
    // GetPage(
    //   name: AppRoute.register,
    //   page: () => const RegisterPage(),
    //   binding: RegisterBinding(),
    // ),
    // GetPage(
    //   name: AppRoute.forgetPassword,
    //   page: () => const ForgetPasswordPage(),
    //   binding: ForgetPasswordBinding(),
    // ),
    // GetPage(
    //   name: AppRoute.otp,
    //   page: () => const OtpScreen(),
    //   binding: OtpBinding(),
    // ),
  ];
}