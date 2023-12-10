import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/screens/home.dart';
import '/features/auth/widgets/login_signup_form.dart';
import '../bloc/auth_bloc.dart';
import '/constants/constants.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final AuthBloc authBloc = AuthBloc();
  @override
  void initState() {
    authBloc.add(AuthInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: authBloc,
      listenWhen: (previous, current) => current is AuthActionState,
      buildWhen: (previous, current) => current is! AuthActionState,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case const (AuthUserAuthenticatingState):
            return Scaffold(
              backgroundColor: MyColors.primaryColor,
              body: Center(
                child: CircularProgressIndicator(
                  color: MyColors.buttonColor1,
                ),
              ),
            );
          case const (AuthUserAuthenticationSuccessState):
            return const Home();
          case const (AuthUserAuthenticationFailedState):
            return SafeArea(
              child: LoginSignUpForm(authBloc: authBloc),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}