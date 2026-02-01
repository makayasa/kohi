import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kohi/core/constant.dart';
import 'package:kohi/features/auth/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUsecase useCase;
  AuthBloc(this.useCase) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {});
    on<_Login>((event, emit) => _onLoginProcess(event, emit));
    on<_CheckEmail>(
      (event, emit) => _onCheckEMail(event, emit),
    );
  }

  void _onLoginProcess(_Login event, Emitter emit) async {
    emit(AuthState.loading());
    final user = await useCase.login(email: event.email, password: event.password);
    if (user == null) {
      emit(AuthState.unauthorized());
      return;
    }
    emit(AuthState.authorized(user));
  }

  void _onRegisterProcess() {
    emit(AuthState.loading());
  }

  void _onCheckEMail(_CheckEmail event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    final isEmailRegistered = await useCase.checkEmail(email: event.email);
    await Future.delayed(Duration(seconds: 2));
    logger.d(isEmailRegistered);
    emit(_CheckEmailState(isRegistered: isEmailRegistered));
  }
}
