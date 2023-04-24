import 'package:flutter/material.dart';
import 'package:food_donation/Horizantal_Category/chat.dart';
import 'package:food_donation/screen1/home_screen.dart';
import 'package:food_donation/screen1/sell_screen.dart';

class PublicEvents extends StatelessWidget {
  const PublicEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 241, 229),
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(120, 0, 0, 0),
              blurRadius: 20,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 172, 226, 241),
              Color.fromARGB(255, 18, 160, 248),
              Color.fromARGB(217, 56, 48, 209),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        )),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const HomeScreen(),
              ),
            );
          },
        ),
        title: const Text('Donate Leftover Food'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Our Public Events Donation!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/publicEvent.png', // Replace with your restaurant logo image
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Donate your leftover food to those in need.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const SellScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Donate Food',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => ChatScreen(),
                  ),
                );
              },
              child: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 16, color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
