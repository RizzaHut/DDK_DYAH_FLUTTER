import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/home_banner.dart';
import '../widgets/riwayatScan_row.dart';
import '../widgets/batikPilihan_card.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const Color kuning = Color(0xFFC9A961);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Pagi',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              'Naomi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: kuning),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: kuning),
        ),
      ),

      extendBodyBehindAppBar: true,

      body: Stack(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [kuning, Colors.white],
                stops: [0.8, 1.0],
              ),
            ),
          ),
          SafeArea(
            top: false,
            bottom: false,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 150, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeBanner(),
                  const SizedBox(height: 25),

                  RiwayatScanRow(items: controller.terakhirMemindai),
                  const SizedBox(height: 25),

                  const Text(
                    'Batik Pilihan Minggu Ini',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),

                  BatikPilihanCard(batik: controller.batikPilihan),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: const BatikBottomNavBar(activeIndex: 0),
    );
  }
}
