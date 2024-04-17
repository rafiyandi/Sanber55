import 'package:flutter/material.dart';

class MonthPage extends StatelessWidget {
  const MonthPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bulan = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menampilkan Bulan'),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: bulan.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: Text(
              bulan[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
