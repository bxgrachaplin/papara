import 'package:flutter/material.dart';

void main() {
  runApp(PaparaUygulamasi());
}

class PaparaUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnaEkranState(); 
  }
}

class AnaEkranState extends State<AnaEkran> {
  // 1: Ana Ekran, 2: Sanal Kart Ekranı, 3: Kabarık İşlem Geçmişi Ekranı
  int aktifSayfa = 1; 

  @override
  Widget build(BuildContext context) {
    // Sayfa içeriğini seçmek için senin mantığınla temiz bir if-else yapısı kurduk
    Widget sayfaIcerigi;

    if (aktifSayfa == 1) {
      // --- 1. ANA EKRAN ---
      sayfaIcerigi = Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.purple, 
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Papara Card", style: TextStyle(color: Colors.white, fontSize: 18)),
                      Spacer(), 
                      Icon(Icons.credit_card, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text("1234  5678  9101  1121", style: TextStyle(color: Colors.white, fontSize: 20)),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Buğra Turgut", style: TextStyle(color: Colors.white)),
                      Spacer(),
                      Text("12/28", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                aktifSayfa = 2; 
              });
            },
            child: Text("Sanal Kart Oluştur"),
          ),
          SizedBox(height: 20),
          
          // İşlem geçmişini tıklanabilir yapmak için OutlinedButton kullandım
          OutlinedButton(
            onPressed: () {
              setState(() {
                aktifSayfa = 3; // Tıklayınca İşlem Geçmişi sayfasına geçiş yapacak
              });
            },
            child: Text("İşlem Geçmişi (Tümünü Gör)", style: TextStyle(color: Colors.purple, fontSize: 18)),
          ),
          
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Netflix", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-150 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Market Alışverişi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-300 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Ahmet'ten Para Geldi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("+500 TL", style: TextStyle(color: Colors.green)),
                ),
                ListTile(
                  title: Text("Steam Oyun", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-450 TL", style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          )
        ],
      );
    } else if (aktifSayfa == 2) {
      //SANAL KART OLUŞTURMA SAYFASI 
      sayfaIcerigi = Column( 
        children: [
          SizedBox(height: 50),
          Center(
            child: Icon(Icons.credit_card, color: Colors.purple, size: 100),
          ),
          SizedBox(height: 20),
          Text(
            "Yeni Sanal Kart",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              color: Colors.white, 
              child: TextField(), 
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              setState(() {
                aktifSayfa = 1; 
              });
            },
            child: Text("Kartı Oluştur ve Geri Dön", style: TextStyle(color: Colors.purple)),
          ),
        ],
      );
    } else {
      // İŞLEM GEÇMİŞİ SAYFASIDIR
      sayfaIcerigi = Column(
        children: [
          SizedBox(height: 20),
          Text("Tüm İşlemleriniz", style: TextStyle(color: Colors.purple, fontSize: 22)),
          SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              setState(() {
                aktifSayfa = 1; // Ana sayfaya geri dönüş butonu
              });
            },
            child: Text("Ana Sayfaya Dön", style: TextStyle(color: Colors.purple)),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Netflix", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-150 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Market Alışverişi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-300 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Ahmet'ten Para Geldi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("+500 TL", style: TextStyle(color: Colors.green)),
                ),
                ListTile(
                  title: Text("Steam Oyun", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-450 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Trendyol Alışverişi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-850 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("GetirYemek Siparişi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-250 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Zeynep'ten Para Geldi", style: TextStyle(color: Colors.white)),
                  subtitle: Text("+1200 TL", style: TextStyle(color: Colors.green)),
                ),
                ListTile(
                  title: Text("Spotify Premium", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-40 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Starbucks Kahve", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-110 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Eczane Cashback", style: TextStyle(color: Colors.white)),
                  subtitle: Text("+25 TL", style: TextStyle(color: Colors.green)),
                ),
                ListTile(
                  title: Text("İstanbulkart Yükleme", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-200 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Amazon Prime", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-39 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Turkcell Fatura Ödeme", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-340 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Aylık Harçlık", style: TextStyle(color: Colors.white)),
                  subtitle: Text("+5000 TL", style: TextStyle(color: Colors.green)),
                ),
                ListTile(
                  title: Text("Martı Yolculuk", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-55 TL", style: TextStyle(color: Colors.red)),
                ),
                ListTile(
                  title: Text("Burger King Menü", style: TextStyle(color: Colors.white)),
                  subtitle: Text("-180 TL", style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "papara",
            style: TextStyle(color: Colors.purple, fontSize: 26), 
          ),
        ),
      ),
      body: sayfaIcerigi, // Seçilen sayfa burada gösteriliyor
    );
  }
}