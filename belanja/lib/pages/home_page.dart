import 'package:flutter/material.dart';
import '/models/item.dart';
import '/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      produk: 'Pensil',
      harga: 4000,
      deskripsi: 'Pensil 2B - Cocok untuk menulis dan menggambar',
    ),
    Item(
      produk: 'Penghapus',
      harga: 3000,
      deskripsi: 'Penghapus Karet - Biodgerdable',
    ),
    Item(
      produk: 'Pulpen',
      harga: 5000,
      deskripsi: 'Pulpen Tinta - 100.1% Terbuat dari tinta gurita',
    ),
    Item(
      produk: 'Buku Gambar',
      harga: 15000,
      deskripsi: 'Buku Gambar - Cocok dengan pensil',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Belanja ATK',
          style: TextStyle(fontWeight: FontWeight(800)),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 250, 233),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(
              item: items[index],
              onTap: () => Navigator.pushNamed(
                context,
                '/item',
                arguments: items[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
