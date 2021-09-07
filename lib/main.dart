import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: const Text(
                    'Kız Kulesi',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        letterSpacing: 1.5),
                  ),
                ),
                Text(
                  'İstanbul, Türkiye',
                  style: TextStyle(
                      letterSpacing: 1, color: Colors.grey[500], fontSize: 15),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          const Text('23'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.near_me, 'KONUM'),
        _buildButtonColumn(color, Icons.call, 'ARA'),
        _buildButtonColumn(color, Icons.share, 'PAYLAŞ'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        "Kız Kulesi, hakkında çeşitli rivayetler anlatılan, efsanelere konu olan, İstanbul Boğazı'nın Marmara Denizi'ne yakın kısmında, Salacak açıklarında yer alan küçük adacık üzerinde inşa edilmiş yapıdır. Üsküdar'ın sembolü haline gelen kule, Üsküdar’da Bizans devrinden kalan tek eserdir."
      ), 
    );

    return MaterialApp(
      title: 'Gezilecek Yerler',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gezilecek Yerler'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/tower.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

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
        ),
      ],
    );
  }
}
