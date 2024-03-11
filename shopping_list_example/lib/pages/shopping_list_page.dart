import 'package:flutter/material.dart';
import 'package:shopping_list_example/models/product.dart';
import 'package:shopping_list_example/widgets/cart_total.dart';

class ShoppingListPage extends StatelessWidget {
  ShoppingListPage({super.key});

  // state variables
  List<Product> products = <Product>[
    const Product(
        name: 'Ayakkabı',
        price: 3009.90,
        imageUrl: 'https://dfcdn.defacto.com.tr/6/B9727AX_NS_BK26_01_01.jpg'),
    const Product(
        name: 'Pantolon',
        price: 509.90,
        imageUrl: 'https://dfcdn.defacto.com.tr/6/C2088AX_24SP_BK81_01_02.jpg'),
    const Product(
        name: 'T-shirt',
        price: 209.90,
        imageUrl: 'https://dfcdn.defacto.com.tr/6/A8311AX_24SP_WT32_02_02.jpg'),
  ];

  // TODO: 1 - sepet variable oluştur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışveriş Listesi'),
        actions: const [
          // TODO: 3 - yorum satırını aç
          /* CartTotal(
            cart: cart,
          ), */
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
          );
        },
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('${product.price} ₺'),
            // trailing: Container(),
            trailing: IconButton(
              onPressed: () {
                // TODO: 2 - sepete ürün ekle
              },
              icon: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
