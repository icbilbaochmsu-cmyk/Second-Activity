// File: lib/views/home_page.dart
// Home page for the Photography Service App
// Demonstrates layouts required in Activity 2 (Row, Column, Container, Expanded, Flexible, Stack, etc.)

import 'package:flutter/material.dart';
import '../widgets/reusable_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 1. Three Text widgets in a Row with equal spacing
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Wedding"),
                Text("Portraits"),
                Text("Events"),
              ],
            ),
          ),

          // 2. Two buttons in a Column, centered
          SizedBox(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReusableButton(text: "Book Now", onPressed: () {}),
                const SizedBox(height: 12),
                ReusableButton(text: "View Portfolio", onPressed: () {}),
              ],
            ),
          ),

          // 3. Container with padding, margin, background color
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            color: Colors.indigo.shade50,
            child: const Text(
              "Photography is not just capturing images, it's capturing memories.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),

          // 4. Profile card layout with Row + Column
          Card(
            margin: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200', // sample image
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Ivan Bilbao",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Text("Professional Photographer"),
                        Text("📍 Silay City"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 5. Responsive layout using Expanded (two containers share width)
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.indigo.shade100,
                  child: const Center(child: Text("Service 1")),
                ),
              ),
              Expanded(
                child: Container(
                  height: 80,
                  color: Colors.indigo.shade200,
                  child: const Center(child: Text("Service 2")),
                ),
              ),
            ],
          ),

          // 6. Navigation bar with Row + icons evenly spaced
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.photo_camera, size: 28),
                Icon(Icons.photo_album, size: 28),
                Icon(Icons.video_camera_back, size: 28),
                Icon(Icons.settings, size: 28),
              ],
            ),
          ),

          // 7. Stack layout with background + floating button overlay
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/400"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),

          // 8. Flexible demo: two texts resizing
          SizedBox(
            height: 60,
            child: Row(
              children: const [
                Flexible(
                  flex: 1,
                  child: Text(
                    "Flexible text 1 (short)",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    "Flexible text 2 (this one is longer and adjusts with space)",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          // 9. Chat bubble UI with Container
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.indigo.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text("Hi! Are you available for a photoshoot?"),
          ),

          // 10. Row + Column in same widget tree (grid-like layout without GridView)
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.indigo.shade50,
                        child: const Center(child: Text("Box 1")),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.indigo.shade100,
                        child: const Center(child: Text("Box 2")),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.indigo.shade200,
                        child: const Center(child: Text("Box 3")),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.indigo.shade300,
                        child: const Center(child: Text("Box 4")),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
