part of 'cart_cubit.dart';

class CartState extends Equatable {
  final List<Product> cart;

  const CartState({
    required this.cart,
  });

  factory CartState.initial() {
    return const CartState(
      cart: [],
    );
  }

  double get getTotalPriceInCart {
    var total = 0.0;
    for (var product in cart) {
      total += product.price;
    }
    return total.roundToDouble();
  }

  @override
  List<Object> get props => [cart];

  @override
  bool get stringify => true;

  CartState copyWith({
    List<Product>? cart,
  }) {
    return CartState(
      cart: cart ?? this.cart,
    );
  }
}
