import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Card & Parsing",
    home: HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card & Parsing"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0), // Tambahkan padding agar tidak menempel ke tepi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardHome(
              icon: Icons.home,
              text: "Home",
              warnaIcon: Colors.brown,
            ),
            CardHome(
              icon: Icons.favorite,
              text: "Favorite",
              warnaIcon: Colors.pink,
            ),
            CardHome(
              icon: Icons.place,
              text: "Location",
              warnaIcon: Colors.blue,
            ),
            CardHome(
              icon: Icons.settings,
              text: "Settings",
              warnaIcon: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class CardHome extends StatelessWidget {
  CardHome({required this.icon, required this.text, required this.warnaIcon});

  final IconData icon;
  final String text;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        // margin: EdgeInsets.all(5.0), // Memberikan sedikit margin pada Card
        // child: Padding(
        //  padding: EdgeInsets.all(10.0), // Memberikan padding di dalam Card
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
            SizedBox(height: 5.0), // Menambahkan jarak antara icon dan teks
            Text(
              text,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ],
        ),
        //  ),
      ),
    );
  }
}
