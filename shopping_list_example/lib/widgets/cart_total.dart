import 'package:flutter/material.dart';
import 'package:shopping_list_example/models/product.dart';

class CartTotal extends StatelessWidget {
  final List<Product> cart;

  const CartTotal({
    super.key,
    required this.cart,
  });

  double get getTotalPriceInCart {
    var total = 0.0;
    for (var product in cart) {
      total += product.price;
    }
    return total.roundToDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.shopping_bag),
        const SizedBox(height: 4),
        Text(
          'Toplam $getTotalPriceInCart ₺',
        )
      ],
    );
  }
}
