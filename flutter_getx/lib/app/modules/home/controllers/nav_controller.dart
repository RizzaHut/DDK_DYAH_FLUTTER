import 'package:get/get.dart';
import '../routes/app_routes.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void onNavTap(int index) {
    selectedIndex.value = index;

    switch (index) {
      case 0:
        Get.offAllNamed(AppRoutes.home);
        break;
      case 1:
        Get.toNamed(AppRoutes.scan);
        break;
      case 2:
        Get.toNamed(AppRoutes.galeri);
        break;
      case 3:
        Get.toNamed(AppRoutes.profil);
        break;
    }
  }

  void setIndex(int index) {
    selectedIndex.value = index;
  }
}
