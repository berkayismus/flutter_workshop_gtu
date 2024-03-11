import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shopping_list_bloc/models/product.dart';

part 'shopping_list_state.dart';

class ShoppingListCubit extends Cubit<ShoppingListState> {
  ShoppingListCubit() : super(ShoppingListInitial());

  Future<void> getShoppingList() async {
    try {
      emit(ShoppingListLoading());
      //* web servis isteği simüle ediliyor
      await Future.delayed(const Duration(seconds: 2));

      emit(ShoppingListLoaded(products: sampleProducts));
      debugPrint(state.toString());
    } catch (e) {
      emit(ShoppingListFailure());
    }
  }
}
