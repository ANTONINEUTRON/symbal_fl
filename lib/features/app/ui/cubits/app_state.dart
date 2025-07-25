import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  const AppState({this.errorMessage = '', this.alertMessage = ''});

  final String errorMessage;
  final String alertMessage;

  @override
  List<Object?> get props => [errorMessage, alertMessage];

  AppState copyWith({String? errorMessage, String? alertMessage}) {
    return AppState(
      errorMessage: errorMessage ?? this.errorMessage,
      alertMessage: alertMessage ?? this.alertMessage,
    );
  }
}
