import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/item.dart';

// Provider untuk gambar yang dipilih
final selectedItemProvider = StateProvider<Item>((ref) {
  return Item(name: "Blankon 1", imagePath: "assets/images/blankon1.png");
});