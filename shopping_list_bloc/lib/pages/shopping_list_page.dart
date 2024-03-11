import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list_bloc/cubit/cart_cubit.dart';
import 'package:shopping_list_bloc/cubit/shopping_list_cubit.dart';
import 'package:shopping_list_bloc/widgets/cart_total.dart';

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışveriş Listesi'),
        actions: const [
          CartTotal(),
        ],
      ),
      body: Container(),
      // TODO: 4 - listeyi bloc builder ile sar
      /*   body: BlocBuilder<ShoppingListCubit, ShoppingListState>(
        builder: (context, state) {
          if (state is ShoppingListLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ShoppingListLoaded) {
            return ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 2,
                );
              },
              itemCount: state.products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = state.products[index];
                return ListTile(
                  leading: Image.network(product.imageUrl),
                  title: Text(product.name),
                  subtitle: Text('${product.price} ₺'),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<CartCubit>().addToCart(product: product);
                    },
                    icon: const Icon(Icons.add),
                  ),
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ), */
    );
  }
}
