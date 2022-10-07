import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTestPage extends StatelessWidget {
  const ThemeTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Test Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
            ),
            label: 'Whislist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_rounded,
            ),
            label: 'Featured',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // text style
            Text(
              'Learning that fits',
              style: GoogleFonts.amiri(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'Skills for your present (and future)',
              style: GoogleFonts.hindMadurai(),
            ),
            Text(
              'Featured',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),

            // button style
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hello World'),
                ),
                const SizedBox(
                  width: 16,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Hello World'),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
