import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list_bloc/cubit/cart_cubit.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: 5 - cart widget'ı bloc builder ile sar
    /*  final totalPriceInCart =
        context.watch<CartCubit>().state.getTotalPriceInCart; */
    return const Column(
      children: [
        Icon(Icons.shopping_bag),
        SizedBox(height: 4),
        Text(
          'Toplam 0 ₺',
          //'Toplam $totalPriceInCart ₺',
        )
      ],
    );
  }
}
