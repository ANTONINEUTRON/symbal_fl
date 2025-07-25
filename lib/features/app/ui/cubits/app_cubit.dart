import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/features/app/ui/cubits/app_state.dart';


class AppCubit extends Cubit<AppState>{
  AppCubit() : super(AppState());

  void setErrorMessage(String message) {
    emit(state.copyWith(errorMessage: message));
  }

  void setAlertMessage(String message) {
    emit(state.copyWith(alertMessage: message));
  }

  void reset() {
    emit(AppState());
  }
}
