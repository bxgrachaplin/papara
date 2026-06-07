import 'package:flutter/material.dart';
import 'dart:math';

class KartSayfasi extends StatefulWidget {
  @override
  _KartSayfasiState createState() => _KartSayfasiState();
}

// ana kart bilgileridir
class _KartSayfasiState extends State<KartSayfasi> {
  // Sınıf içideğişkenlerdir
  String anaKartNo = "5342  1234 5678 9012";
  String anaKartIsim = "Buğra Turgut";
  
  // Değişken Sanal Kart No ve durum bilgileridir
  String sanalKartNo = "5342  **** **** 1907";
  String sanalKartIsim = "SANAL KART";
  String mesaj = "";
  
  // Rastgele sayı üretimi için kullanılan Random metodudur
  Random rastgele = Random();

  // Sanal kart numarası üreten fonksiyondur
  void sanalKartOlustur() {
    int blok2 = rastgele.nextInt(9000) + 1000;
    int blok3 = rastgele.nextInt(9000) + 1000;
    int blok4 = rastgele.nextInt(9000) + 1000;

    setState(() {
      sanalKartNo = "5342  $blok2 $blok3 $blok4";
      mesaj = "Sanal kartınız başarıyla güncellendi!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.purple),
        centerTitle: true,
        title: const Text(
          'Kartlarım', 
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Text("Ana Kartım", style: TextStyle(color: Colors.grey, fontSize: 18)),
          const SizedBox(height: 10),
          
          // kart Tasarimi fonksiyonu kullanılarak ana kart yapılıyor
          kartTasarimi(anaKartNo, anaKartIsim, Colors.purple),
          
          const SizedBox(height: 30),
          const Text("Sanal Kartım", style: TextStyle(color: Colors.grey, fontSize: 18)),
          const SizedBox(height: 10),
          
          kartTasarimi(sanalKartNo, sanalKartIsim, Colors.grey[800]!),
          
          const SizedBox(height: 30),
          
          // Sanal kart bilgilerini yenileyen butondur
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[900],
              minimumSize: const Size(double.infinity, 60),
              side: const BorderSide(color: Colors.purple),
            ),
            onPressed: sanalKartOlustur,
            child: const Text('SANAL KART BİLGİLERİNİ YENİLE', style: TextStyle(color: Colors.purple)),
          ),
          
          const SizedBox(height: 20),
          
          // Geri bildirim mesaj alanıdır
          Text(
            mesaj, 
            textAlign: TextAlign.center, 
            style: const TextStyle(color: Colors.green, fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Kart tasarım bölümüdür
  Widget kartTasarimi(String numara, String isim, Color renk) {
    return Container(
      height: 190, // 
      width: double.infinity,
      decoration: BoxDecoration(
        color: renk,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo ve temassız ödeme sembolü
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('papara', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Icon(Icons.wifi, color: Colors.white),
            ],
          ),
          const SizedBox(height: 8), 
          // Kart Çipi İkonu
          Icon(Icons.memory, color: Colors.grey[300], size: 32),
          const SizedBox(height: 8), 
          // Kart Numarası
          Text(
            numara, 
            style: const TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 2),
          ),
          const SizedBox(height: 4), 
          // Kart Sahibi Bilgisidir
          Text(
            isim, 
            style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}