import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:food_delivery/shared/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitiState());

  static AppCubit get(context) => BlocProvider.of(context);

  num foodQuantity = 1;
  void increase(num quantity) {
    if (quantity == 1) {
      foodQuantity++;
    }

    emit(AppIncrementQuantatiyState());
  }

  void decrease(num quantity) {
    if (quantity == 1 && foodQuantity > 1) {
      foodQuantity--;
    }
    emit(AppDecreaseQuantatiyState());
  }
}
