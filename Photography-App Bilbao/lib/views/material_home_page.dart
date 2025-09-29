// File: lib/views/material_home_page.dart
// Demonstrates the same UI using Material Design widgets only

import 'package:flutter/material.dart';

class MaterialHomePage extends StatelessWidget {
  const MaterialHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material Home Page"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Material Design Section",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Material card
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.home, color: Colors.indigo),
                title: const Text("Material Home Widget"),
                subtitle: const Text("This is a Material-styled card."),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Click Me"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
