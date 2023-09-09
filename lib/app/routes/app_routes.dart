    import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import 'routes.dart';
import '../modules/login/binding/login_binding.dart';
import '../modules/login/view/login_view.dart';
import '/app/routes/routes.dart';

class AppPages {
  static final routes = [
    
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    ];
}
