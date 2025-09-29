// File: lib/views/profile_page.dart
// Profile Page for the Photography Service App
// Displays photographer's information, portfolio preview, and a booking button.

import 'package:flutter/material.dart';
import '../widgets/reusable_button.dart';
import '../widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Card (Reusable widget)
            const ProfileCard(
              name: "Ivan Bilbao",
              role: "Professional Photographer",
              location: "📍 Silay City",
              imageUrl: "https://picsum.photos/200",
            ),

            const SizedBox(height: 20),

            const Text(
              "About Me",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "I am a passionate photographer specializing in weddings, portraits, "
              "and events. My goal is to capture genuine emotions and timeless memories.",
              style: TextStyle(fontSize: 15),
            ),

            const SizedBox(height: 20),

            const Text(
              "Portfolio Preview",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Simple Row + Column to mimic grid preview of photos
            Row(
              children: [
                Expanded(
                  child: Image.network("https://picsum.photos/150?1",
                      height: 120, fit: BoxFit.cover),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Image.network("https://picsum.photos/150?2",
                      height: 120, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Image.network("https://picsum.photos/150?3",
                      height: 120, fit: BoxFit.cover),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Image.network("https://picsum.photos/150?4",
                      height: 120, fit: BoxFit.cover),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Reusable button for booking
            Center(
              child: ReusableButton(
                text: "Book a Photoshoot",
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Booking feature coming soon!"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
