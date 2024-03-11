part of 'shopping_list_cubit.dart';

sealed class ShoppingListState extends Equatable {
  const ShoppingListState();

  @override
  List<Object> get props => [];
}

final class ShoppingListInitial extends ShoppingListState {}

final class ShoppingListLoading extends ShoppingListState {}

final class ShoppingListLoaded extends ShoppingListState {
  final List<Product> products;

  const ShoppingListLoaded({
    required this.products,
  });

  @override
  List<Object> get props => [
        products,
      ];
}

final class ShoppingListFailure extends ShoppingListState {}

// * örnek ürünler
List<Product> sampleProducts = <Product>[
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
