import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/item.dart';
import '../../providers/selected_item_provider.dart';

// Daftar undangan favorit/populer
final List<Item> favorit = [
  Item(name: "Undangan 1", imagePath: "assets/images/undangan1.png"),
  Item(name: "Undangan 2", imagePath: "assets/images/undangan2.png"),
  Item(name: "Undangan 3", imagePath: "assets/images/undangan3.png"),
  Item(name: "Undangan 4", imagePath: "assets/images/undangan4.png"),
  Item(name: "Undangan 5", imagePath: "assets/images/undangan5.png"),
  Item(name: "Undangan 6", imagePath: "assets/images/undangan6.png"),
];

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItem = ref.watch(selectedItemProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorit Blanko Undangan',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          // Preview besar
          SizedBox(
            height: 250,
            child: Center(
              child: Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bunga.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Image.asset(
                  selectedItem.imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Grid favorit
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                itemCount: favorit.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final item = favorit[index];
                  return GestureDetector(
                    onTap: () {
                      ref.read(selectedItemProvider.notifier).state = item;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedItem.name == item.name
                              ? Colors.blue
                              : Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Footer
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Column(
              children: const [
                SizedBox(height: 6),
                Text(
                  'Toni Direja - 23552011083',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'UNIVERSITAS TEKNOLOGI BANDUNG',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '2025',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}