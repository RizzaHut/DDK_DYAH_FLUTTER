//JANLUP NANTI DATA BATIK PAKAI JSON(FIREBASE) BUAT PJBL!!!

class BatikModel {
  final String nama;
  final String asal;
  final String imagePath;
  final String deskripsi;
  final String route;

  const BatikModel({
    required this.nama,
    required this.asal,
    required this.imagePath,
    required this.deskripsi,
    required this.route,
  });
}

class DetailBatik {
  final String title;
  final String content;

  const DetailBatik({
    required this.title,
    required this.content,
  });
}

class HasilScanModel {
  final String nama;
  final String asal;
  final String imagePath;
  final List<DetailBatik> detail;
  final List<BatikModel> terkait;

  const HasilScanModel({
    required this.nama,
    required this.asal,
    required this.imagePath,
    required this.detail,
    required this.terkait,
  });
}
