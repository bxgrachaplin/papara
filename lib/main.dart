import 'package:flutter/material.dart';
import 'sanalkartsayfasi.dart';
import 'islemgecmis.dart';

void main() {
  runApp(PaparaKlonUygulamasi());
}
class PaparaKlonUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AnaSayfa(),
    );
  }
}

// Cüzdan bakiyesi ve sayfa yönlendirmelerini içerir
class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'papara',
          style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Bakiye Kartı Bölümü
            Container(
              width: double.infinity,
              height: 300,
              child: Card(
                color: Colors.grey[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Toplam Bakiye',
                      style: TextStyle(
                        color: Colors.grey[400], 
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '67.945,00 TL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 35),
                    Icon(
                      Icons.account_balance_wallet_rounded, 
                      color: Colors.purpleAccent, 
                      size: 65,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            
            // Kartlarım Sayfasına Yönlendiren Butonudur
            Container(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KartSayfasi()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.credit_card_rounded, color: Colors.white),
                    SizedBox(width: 15),
                    Text(
                      'KARTLARIM', 
                      style: TextStyle(
                        fontSize: 16, 
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // İşlem Geçmişi Sayfasına Yönlendiren Butonudur
            Container(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IslemGecmisiSayfasi()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.history_rounded, color: Colors.purpleAccent),
                    SizedBox(width: 15),
                    Text(
                      'GEÇMİŞİ GÖR', 
                      style: TextStyle(
                        fontSize: 16, 
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}