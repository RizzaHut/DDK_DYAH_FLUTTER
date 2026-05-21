import 'package:get/get.dart';

import '../models/batik_model.dart';
import '../routes/app_routes.dart';

class HasilScanController extends GetxController {
  late HasilScanModel currentBatik;

  @override
  void onInit() {
    super.onInit();

    final String routeArg = Get.arguments as String? ?? Get.currentRoute;
    currentBatik = _getDataByRoute(routeArg);
  }

  //JANLUP NANTI DATA BATIK PAKAI JSON(FIREBASE) BUAT PJBL!!!

  HasilScanModel _getDataByRoute(String route) {
    switch (route) {
      case AppRoutes.hasilKawung:
        return _dataKawung;
      case AppRoutes.hasilParang:
        return _dataParang;
      case AppRoutes.hasilMegaMendung:
        return _dataMegaMendung;
      case AppRoutes.hasilSekarJagad:
        return _dataSekarJagad;
      case AppRoutes.hasilSogan:
        return _dataSogan;
      default:
        return _dataKawung;
    }
  }

  static const _terkaitKawung = BatikModel(
    nama: 'Batik Kawung',
    asal: 'Yogyakarta',
    imagePath: 'assets/home/kawung.png',
    deskripsi: 'Motif bulatan menyerupai buah kawung, melambangkan kesucian.',
    route: AppRoutes.hasilKawung,
  );

  static const _terkaitParang = BatikModel(
    nama: 'Batik Parang',
    asal: 'Jawa Tengah',
    imagePath: 'assets/home/parang.png',
    deskripsi: 'Motif S diagonal melambangkan kekuatan dan semangat.',
    route: AppRoutes.hasilParang,
  );

  static const _terkaitMegaMendung = BatikModel(
    nama: 'Batik Mega Mendung',
    asal: 'Jawa Barat',
    imagePath: 'assets/home/megamendung.png',
    deskripsi: 'Motif awan berlapis melambangkan kesabaran dan ketenangan.',
    route: AppRoutes.hasilMegaMendung,
  );

  static const HasilScanModel _dataKawung = HasilScanModel(
    nama: 'Batik Kawung',
    asal: 'Yogyakarta',
    imagePath: 'assets/hasilScan/kawung.png',
    detail: [
      DetailBatik(
        title: 'Sejarah',
        content:
            'Batik kawung adalah salah satu motif batik tertua di Indonesia yang '
            'berasal dari Yogyakarta. Keberadaannya sering sekali disinggung dan muncul '
            'dalam berbagai sumber sejarah tertulis dan budaya lisan sejak zaman Kesultanan '
            'Mataram pada abad ke-16. Motif ini diciptakan oleh Sultan Agung Mataram yang '
            'terinspirasi dari pohon aren. Awal mulanya batik ini hanya boleh dikenakan '
            'oleh golongan sentana dalem, atau orang tertentu yang berhubungan dengan '
            'keluarga Raja.',
      ),
      DetailBatik(
        title: 'Motif',
        content:
            'Menyerupai empat bulatan buah kawung yang disusun simetris. Motif ini '
            'terinspirasi dari buah aren atau kolang-kaling, dengan bentuk bulatan yang '
            'menyerupai irisan buah tersebut.',
      ),
      DetailBatik(
        title: 'Makna',
        content:
            'Motif ini melambangkan kesempurnaan, kesucian, dan pengendalian diri '
            'karena kaitannya dengan konsep "suwung" (kosong) yang berarti kekosongan '
            'nafsu duniawi. Kini menjadi salah satu batik tertua dan populer di Indonesia.',
      ),
    ],
    terkait: [_terkaitKawung, _terkaitParang, _terkaitMegaMendung],
  );

  static const HasilScanModel _dataParang = HasilScanModel(
    nama: 'Batik Parang',
    asal: 'Jawa Tengah',
    imagePath: 'assets/hasilScan/parang.png',
    detail: [
      DetailBatik(
        title: 'Sejarah',
        content:
            'Motif Batik Parang memiliki akar sejarah yang kuat dalam budaya Jawa. '
            'Kata "Parang" berasal dari bahasa Jawa yang berarti "pedang," dan motif ini '
            'melambangkan kekuatan serta keberanian. Sejarah Batik Parang dapat ditelusuri '
            'kembali ke masa Kesultanan Mataram pada abad ke-16. Pada masa itu, motif ini '
            'digunakan secara eksklusif oleh bangsawan dan keluarga kerajaan sebagai simbol '
            'status dan kekuasaan.',
      ),
      DetailBatik(
        title: 'Motif',
        content:
            'Batik Motif Parang adalah salah satu motif batik klasik tertua dan paling '
            'ikonik dari Jawa, berbentuk pola "S" diagonal yang saling terkait menyerupai '
            'ombak atau pedang, melambangkan kekuatan, semangat pantang menyerah, dan '
            'kebijaksanaan. Berasal dari Keraton Mataram, dulunya motif ini hanya boleh '
            'dipakai raja dan keturunannya.',
      ),
      DetailBatik(
        title: 'Makna',
        content:
            'Batik Parang memiliki makna filosofis yang mendalam berkaitan dengan '
            'simbolisme pedang. Motif ini menggambarkan kekuatan, keberanian, dan semangat '
            'juang. Pola yang teratur dan berulang melambangkan keseimbangan dan harmoni '
            'dalam kehidupan.',
      ),
    ],
    terkait: [_terkaitKawung, _terkaitParang, _terkaitMegaMendung],
  );

  static const HasilScanModel _dataMegaMendung = HasilScanModel(
    nama: 'Batik Mega Mendung',
    asal: 'Jawa Barat',
    imagePath: 'assets/hasilScan/megaMendung.png',
    detail: [
      DetailBatik(
        title: 'Sejarah',
        content:
            'Sunan Gunung Jati yang menyebarluaskan pengaruh agama Islam di Cirebon '
            'pada abad ke-16 menikah dengan Ratu Ong Tien dari Tiongkok. Para pembatik '
            'mengimplementasikan tradisi Tiongkok ke dalam motif batik dengan sentuhan '
            'khas Cirebon — garis awan Cirebon berwujud lancip dan segitiga.',
      ),
      DetailBatik(
        title: 'Motif',
        content:
            'Pada awalnya motif Mega Mendung selalu bernuansa biru dan merah yang '
            'menunjukkan maskulinitas dan keadaan dinamis. Warna ini memperlihatkan '
            'psikologi masyarakat pesisir: lugas, terbuka, dan egaliter.',
      ),
      DetailBatik(
        title: 'Makna',
        content:
            'Warna biru melambangkan langit yang luas, tenang, dan pembawa hujan '
            'sebagai pembawa kesuburan. Biru muda = cerahnya kehidupan, biru tua = '
            'awan gelap yang mengandung air hujan dan memberi kehidupan.',
      ),
    ],
    terkait: [_terkaitKawung, _terkaitParang, _terkaitMegaMendung],
  );

  static const HasilScanModel _dataSekarJagad = HasilScanModel(
    nama: 'Batik Mega Mendung',
    asal: 'Jawa Barat',
    imagePath: 'assets/hasilScan/megaMendung.png',
    detail: [
      DetailBatik(
        title: 'Sejarah',
        content:
            'Sunan Gunung Jati yang menyebarluaskan pengaruh agama Islam di Cirebon '
            'pada abad ke-16 menikah dengan Ratu Ong Tien dari Tiongkok. Para pembatik '
            'mengimplementasikan tradisi Tiongkok ke dalam motif batik dengan sentuhan '
            'khas Cirebon — garis awan Cirebon berwujud lancip dan segitiga.',
      ),
      DetailBatik(
        title: 'Motif',
        content:
            'Pada awalnya motif Mega Mendung selalu bernuansa biru dan merah yang '
            'menunjukkan maskulinitas dan keadaan dinamis. Warna ini memperlihatkan '
            'psikologi masyarakat pesisir: lugas, terbuka, dan egaliter.',
      ),
      DetailBatik(
        title: 'Makna',
        content:
            'Warna biru melambangkan langit yang luas, tenang, dan pembawa hujan '
            'sebagai pembawa kesuburan. Biru muda = cerahnya kehidupan, biru tua = '
            'awan gelap yang mengandung air hujan dan memberi kehidupan.',
      ),
    ],
    terkait: [_terkaitKawung, _terkaitParang, _terkaitMegaMendung],
  );

  static const HasilScanModel _dataSogan = HasilScanModel(
    nama: 'Batik Sogan',
    asal: 'Jawa Barat',
    imagePath: 'assets/hasilScan/megaMendung.png',
    detail: [
      DetailBatik(
        title: 'Sejarah',
        content:
            'Sunan Gunung Jati yang menyebarluaskan pengaruh agama Islam di Cirebon '
            'pada abad ke-16 menikah dengan Ratu Ong Tien dari Tiongkok. Para pembatik '
            'mengimplementasikan tradisi Tiongkok ke dalam motif batik dengan sentuhan '
            'khas Cirebon — garis awan Cirebon berwujud lancip dan segitiga.',
      ),
      DetailBatik(
        title: 'Motif',
        content:
            'Pada awalnya motif Mega Mendung selalu bernuansa biru dan merah yang '
            'menunjukkan maskulinitas dan keadaan dinamis. Warna ini memperlihatkan '
            'psikologi masyarakat pesisir: lugas, terbuka, dan egaliter.',
      ),
      DetailBatik(
        title: 'Makna',
        content:
            'Warna biru melambangkan langit yang luas, tenang, dan pembawa hujan '
            'sebagai pembawa kesuburan. Biru muda = cerahnya kehidupan, biru tua = '
            'awan gelap yang mengandung air hujan dan memberi kehidupan.',
      ),
    ],
    terkait: [_terkaitKawung, _terkaitParang, _terkaitMegaMendung],
  );
}
