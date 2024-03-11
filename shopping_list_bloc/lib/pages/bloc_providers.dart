import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_list_bloc/cubit/cart_cubit.dart';
import 'package:shopping_list_bloc/cubit/shopping_list_cubit.dart';
import 'package:shopping_list_bloc/pages/shopping_list_page.dart';

class ShoppingListBlocProviders extends StatelessWidget {
  const ShoppingListBlocProviders({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: 2 - shopping list page'in üstüne bloc providerları yerleştir
    return Container();
    /*  return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ShoppingListCubit()..getShoppingList(),
        ),
        BlocProvider(
          create: (_) => CartCubit(),
        ),
      ],
      child: const ShoppingListPage(),
    ); */
  }
}
