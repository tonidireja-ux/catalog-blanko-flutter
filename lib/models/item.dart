class Item {
  final String name;
  final String imagePath;
  Item({required this.name, required this.imagePath});
}

// Katalog 12 gambar
List<Item> katalog = List.generate(12, (index) {
  return Item(
    name: "Blankon ${index + 1}",
    imagePath: "assets/images/blankon${index + 1}.png",
  );
});