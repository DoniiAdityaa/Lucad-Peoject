import 'package:flutter/material.dart';
import 'package:jepad/screen/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF27AE60,
      ), // warna latar belakang merah tua
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 250),
            const SizedBox(height: 20),
            const Text(
              'JEPAD',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 600,
                  ), // Batasi lebar maksimal
                  child: Text(
                    'Selamat datang di Jepara Adventure! Jelajahi rute tersembunyi, abadikan momen seru, dan bagikan kisah petualanganmu di Jepara!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.5, color: Colors.white70),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Siap menjelajahi ?'),
            ),
          ],
        ),
      ),
    );
  }
}
