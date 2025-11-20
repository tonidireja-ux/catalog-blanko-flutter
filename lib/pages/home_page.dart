import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/kembang.png',
              fit: BoxFit.cover,
            ),
          ),

          // Overlay warna agar tulisan lebih jelas
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // Konten teks
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                // Tulisan "Wilujeng Sumping"
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Writing', // font Writing ditambahkan di pubspec.yaml
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                // Tulisan "CATALOG UNDANGAN"
                Text(
                  'CATALOG UNDANGAN',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}