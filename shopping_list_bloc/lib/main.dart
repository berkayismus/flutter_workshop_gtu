import 'package:flutter/material.dart';
import 'package:shopping_list_bloc/pages/bloc_providers.dart';
import 'package:shopping_list_bloc/pages/shopping_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alışveriş Listesi',
      // TODO: 3 - açılış sayfasını bloc providerlar ile değiştir
      home: ShoppingListPage(),
    );
  }
}
