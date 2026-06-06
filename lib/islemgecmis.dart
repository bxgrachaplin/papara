import 'package:flutter/material.dart';

class IslemGecmisiSayfasi extends StatelessWidget {
  
  const IslemGecmisiSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.purple),
        centerTitle: true,
        title: const Text(
          'İşlem Geçmişi', 
          style: TextStyle(color: Colors.purple),
        ),
      ),
      // 
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          islemSatiri(Icons.fastfood, 'Yemeksepeti', 'Bugün', '- 150 TL', Colors.white),
          islemSatiri(Icons.local_cafe, 'Starbucks', 'Bugün', '- 85 TL', Colors.white),
          islemSatiri(Icons.add_circle, 'Gelen Transfer', 'Dün', '+ 1.200 TL', Colors.green),
          islemSatiri(Icons.shopping_cart, 'Migros', '12 Mayıs', '- 450 TL', Colors.white),
        ],
      ),
    );
  }
 
  Widget islemSatiri(IconData ikon, String baslik, String altBaslik, String tutar, Color renk) {
    return Card(
      color: Colors.grey[900], // Papara koyu tema tasarımı için uygun gri tonu.
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Sol taraftaki İkon Başlık ve Alt Başlıktır
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple, 
                  child: Icon(ikon, color: Colors.white),
                ),
                const SizedBox(width: 15),
                // Başlık ve tarih bilgilerini dikeyde hizalamak için Column kullandım
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text(
                      baslik, 
                      style: const TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      altBaslik, 
                      style: const TextStyle(
                        color: Colors.grey, 
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Sağ taraftaki işlem tutarı Renk parametresiyle gelir/gider ayrımı görselleştirildi
            Text(
              tutar, 
              style: TextStyle(
                color: renk, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}