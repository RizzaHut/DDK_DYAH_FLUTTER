import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../bindings/hasil_scan_binding.dart';
import '../views/home_view.dart';
import '../views/hasil_scan_screen.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: AppRoutes.hasilKawung,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),
    GetPage(
      name: AppRoutes.hasilParang,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),
    GetPage(
      name: AppRoutes.hasilMegaMendung,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),
    GetPage(
      name: AppRoutes.hasilSekarJagad,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),
    GetPage(
      name: AppRoutes.hasilSogan,
      page: () => const HasilScanView(),
      binding: HasilScanBinding(),
    ),
  ];
}
