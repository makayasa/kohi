import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:kohi/core/widgets/default_button.dart';
import 'package:kohi/features/auth/auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: .symmetric(horizontal: 10),
          child: Column(
            children: [
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.maybeWhen(
                    loading: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      );
                    },
                    orElse: () {
                      if (Navigator.canPop(context)) {
                        Navigator.of(context).pop(); // Or use context.pop() from GoRouter
                      }
                    },
                  );
                },
                child: SizedBox(),
              ),
              const SizedBox(height: 100),
              Container(
                height: 250,
                decoration: BoxDecoration(color: colorScheme.primary, borderRadius: .circular(10)),
              ),
              const SizedBox(height: 35),
              Align(
                alignment: .centerLeft,
                child: Text('Masukkan email anda'),
              ),
              const SizedBox(height: 10),
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    checkEmail: (value) {
                      if (value ?? false) {
                        return FormBuilderTextField(
                          name: 'password',
                          decoration: InputDecoration(
                            labelText: 'Password',
                          ),
                        );
                      }
                      return SizedBox();
                    },
                    orElse: () => SizedBox(),
                  );
                  // return state.maybeWhen(
                  //   orElse: () => FormBuilderTextField(
                  //     name: 'password',
                  //     decoration: InputDecoration(
                  //       labelText: 'Password',
                  //     ),
                  //   ),
                  // );
                  // return FormBuilderTextField(
                  //   name: 'password',
                  //   decoration: InputDecoration(
                  //     labelText: 'Password',
                  //   ),
                  // );
                },
              ),
              const SizedBox(height: 20),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return DefaultButton(
                    width: 100,
                    text: 'Login',
                    onTap: () {
                      if (!_formKey.currentState!.saveAndValidate()) {
                        return;
                      }
                      final authBloc = context.read<AuthBloc>();

                      if (state == AuthState.checkEmail(isRegistered: true)) {
                        authBloc.add(
                          AuthEvent.login(
                            email: _formKey.currentState!.value['email'],
                            password: _formKey.currentState!.value['password'],
                          ),
                        );

                        return;
                      }

                      FocusScope.of(context).unfocus();
                      authBloc.add(
                        AuthEvent.checkEmail(
                          email: _formKey.currentState!.value['email'],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
