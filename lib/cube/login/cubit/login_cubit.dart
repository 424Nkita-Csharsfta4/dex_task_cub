import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  /// Метод для обновления имени пользователя
  void firstNameChanged(String firstName) {
    emit(state.copyWith(firstName: firstName));
  }

  /// Метод для обновления фамилии пользователя
  void lastNameChanged(String lastName) {
    emit(state.copyWith(lastName: lastName));
  }

  /// Метод для отображения приветственного сообщения
  void sayHi() {
    final String fullName = '${state.firstName} ${state.lastName}';
    emit(state.copyWith(dialogMessage: fullName));
  }
}
