import 'package:equatable/equatable.dart';

/// Состояние экрана авторизации
class LoginState extends Equatable {
  final String firstName;
  final String lastName;
  final String dialogMessage;

  const LoginState({
    this.firstName = '',
    this.lastName = '',
    this.dialogMessage = '',
  });

  @override
  List<Object?> get props => [firstName, lastName, dialogMessage];

  LoginState copyWith({
    String? firstName,
    String? lastName,
    String? dialogMessage,
  }) {
    return LoginState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      dialogMessage: dialogMessage ?? this.dialogMessage,
    );
  }
}
