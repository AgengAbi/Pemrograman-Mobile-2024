import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // titleSection
  final Widget titleSection = Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Mori Park outdoor Activity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Tanakacho, Akishima, Tokyo, Japan',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        /* soal 3*/
        const Icon(
          Icons.star_rate,
          color: Colors.red,
        ),
        const Text("41"),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

  final Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Column(
        children: [
          Text(
            'Mori Park adalah pusat perbelanjaan yang banyak diisi oleh tenant tenant kegiatan luar ruangan (outdoor activity). Berada di Kota Akishima Tokyo, Mori Park menyediakan banyak kebutuhan berkemah dari tingkat pemula hingga professional, selain itu di Mori Park Outdoor Activity jika kamu beruntung akan ada tenant yang menjual cinderamata anime Yuru Camp loh!',
            softWrap: true,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Author',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          Text('Stefanus Ageng Budi Utomo - 2241720126')
        ],
      ));

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    // buttonSection
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    return MaterialApp(
      title: 'Flutter Layout: Stefanus Ageng Budi Utomo - 2241720126',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter layout demo',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Center(
          child: ListView(
            children: [
              Image.asset(
                'assets/images/Mori_Park.jpg',
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
      ),
    );
  }
}
