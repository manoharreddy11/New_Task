import 'package:flutter/material.dart';

class HiFiShopScreen extends StatelessWidget {
  const HiFiShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi-Fi Shop & Service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Audio shop on Rustaveli Ave 57.\nThis shop offers both products and services.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Products Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Products 41',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Show all',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return _buildProductCard(
                  image: index == 0
                      ? 'assets/ModularHeadphones.png'
                      : 'assets/Wireless Headphones.jpg',
                  name: index == 0
                      ? 'AKG N700NCM2 Wireless Headphones'
                      : 'AIAIAI TMA-2 Modular Headphones',
                  price: index == 0 ? '\$199.00' : '\$250.00',
                );
              },
            ),
            const SizedBox(height: 24),

            // Accessories Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Accessories 19',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Show all',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return _buildAccessoryCard(
                  image: index == 0
                      ? 'assets/AIAIAI 1.5m.jpg'
                      : 'assets/AIAIAI jack2m.jpg',
                  name: index == 0
                      ? 'AIAIAI 3.5mm Jack 2m'
                      : 'AIAIAI 3.5mm Jack 1.5m',
                  price: index == 0 ? '\$25.00' : '\$15.00',
                  isAvailable: index == 0,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  // Helper Method to Build Product Cards
  Widget _buildProductCard({
    required String image,
    required String name,
    required String price,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Method to Build Accessory Cards
  Widget _buildAccessoryCard({
    required String image,
    required String name,
    required String price,
    required bool isAvailable,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Text(
              isAvailable ? 'Available' : 'Unavailable',
              style: TextStyle(
                fontSize: 12,
                color: isAvailable ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
