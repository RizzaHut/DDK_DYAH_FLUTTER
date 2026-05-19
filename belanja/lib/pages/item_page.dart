import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Keranjang Barang',
          style: TextStyle(fontWeight: FontWeight(800)),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Card.outlined(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.produk,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(height: 8), // Spacing between texts
                Text(item.deskripsi, style: TextStyle(fontSize: 12)),
                SizedBox(height: 12),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 233, 254),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 1.5),
                  ),
                  child: Text(
                    'Rp ${item.harga}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.blueAccent,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
