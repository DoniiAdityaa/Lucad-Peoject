import 'package:flutter/material.dart';
import 'package:jepad/widgets/destination_card.dart';
import '../../data/destination_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Semua';

  final List<String> categories = [
    'Semua',
    'Wisata Air',
    'Wisata Alam',
    'Wisata Budaya',
  ];

  @override
  Widget build(BuildContext context) {
    // Filter destinasi berdasarkan kategori
    final filteredDestinations =
        selectedCategory == 'Semua'
            ? destinations
            : destinations
                .where((d) => d.category == selectedCategory)
                .toList();

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
          alignment: Alignment.center,
          child: Image.asset('assets/jepad.png', height: 60),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 24, 20, 12),
              child: Center(
                child: Text(
                  "Destinasi yang tersedia di Jepara",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            // === Kategori ===
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return ChoiceChip(
                    label: Text(category),
                    selected: selectedCategory == category,
                    onSelected: (_) {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                    selectedColor: Colors.green,
                    labelStyle: TextStyle(
                      color:
                          selectedCategory == category
                              ? Colors.white
                              : Colors.black,
                    ),
                    backgroundColor: Colors.grey[200],
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // === Grid List Destinasi ===
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: filteredDestinations.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return DestinationCard(
                    destination: filteredDestinations[index],
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
