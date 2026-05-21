import 'package:get/get.dart';
import '../models/batik_model.dart';
import '../routes/app_routes.dart';

class HomeController extends GetxController {

  //JANLUP NANTI DATA BATIK PAKAI JSON(FIREBASE) BUAT PJBL!!!

  final List<BatikModel> terakhirMemindai = const [
    BatikModel(
      nama: 'Batik Kawung',
      asal: 'Yogyakarta',
      imagePath: 'app/modules/assets/home/kawung.png',
      deskripsi: 'Motif bulatan menyerupai buah kawung, melambangkan kesucian.',
      route: AppRoutes.hasilKawung,
    ),
    BatikModel(
      nama: 'Batik Parang',
      asal: 'Jawa Tengah',
      imagePath: 'assets/home/parang.png',
      deskripsi: 'Motif S diagonal melambangkan kekuatan dan semangat.',
      route: AppRoutes.hasilParang,
    ),
    BatikModel(
      nama: 'Batik Mega Mendung',
      asal: 'Jawa Barat',
      imagePath: 'assets/home/megamendung.png',
      deskripsi: 'Motif awan berlapis melambangkan kesabaran dan ketenangan.',
      route: AppRoutes.hasilMegaMendung,
    ),
  ];

  final BatikModel batikPilihan = const BatikModel(
    nama: 'Batik Mega Mendung',
    asal: 'Jawa Barat',
    imagePath: '../assets/home/megamendung.png',
    deskripsi:
        'Batik dari daerah Cirebon ini memiliki motif awan yang berlapis-lapis '
        'sebagai simbol kesabaran dan ketenangan ...',
    route: AppRoutes.hasilMegaMendung,
  );

  @override
  void onInit() {
    super.onInit();

  }
}
