import 'package:get/get.dart';

import '../modules/album/bindings/album_binding.dart';
import '../modules/album/views/album_view.dart';
import '../modules/all_chat/bindings/all_chat_binding.dart';
import '../modules/all_chat/views/all_chat_view.dart';
import '../modules/authGate/bindings/auth_gate_binding.dart';
import '../modules/authGate/views/auth_gate_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/detail_barberman/bindings/detail_barberman_binding.dart';
import '../modules/detail_barberman/views/detail_barberman_view.dart';
import '../modules/detail_barbershop/bindings/detail_barbershop_binding.dart';
import '../modules/detail_barbershop/views/detail_barbershop_view.dart';
import '../modules/homes/bindings/homes_binding.dart';
import '../modules/homes/views/homes_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/see_all/bindings/see_all_binding.dart';
import '../modules/see_all/views/see_all_view.dart';
import '../modules/signIn/bindings/sign_in_binding.dart';
import '../modules/signIn/views/sign_in_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_IN;

  static final routes = [
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_GATE,
      page: () => const AuthGateView(),
      binding: AuthGateBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOMES,
      page: () => const HomesView(),
      binding: HomesBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BARBERSHOP,
      page: () => const DetailBarbershopView(),
      binding: DetailBarbershopBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BARBERMAN,
      page: () => const DetailBarbermanView(),
      binding: DetailBarbermanBinding(),
    ),
    GetPage(
      name: _Paths.SEE_ALL,
      page: () => const SeeAllView(),
      binding: SeeAllBinding(),
    ),
    GetPage(
      name: _Paths.ALL_CHAT,
      page: () => const AllChatView(),
      binding: AllChatBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.ALBUM,
      page: () => const AlbumView(),
      binding: AlbumBinding(),
    ),
  ];
}
