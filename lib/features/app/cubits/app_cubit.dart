import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/app/cubits/app_state.dart';


class AppCubit extends Cubit<AppState>{
  AppCubit() : super(AppState());

  void showErrorMessage(String message) {
    emit(state.copyWith(errorMessage: message));
  }

  Future<void> showAlertMessage(String message) async {
    emit(state.copyWith(alertMessage: message));
  }

  void reset() {
    emit(AppState());
  }
}
