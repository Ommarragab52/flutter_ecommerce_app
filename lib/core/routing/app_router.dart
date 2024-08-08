import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/core/routing/routes.dart';
import 'package:flutter_ecommerce_app/features/login/logic/login_cubit.dart';
import 'package:flutter_ecommerce_app/features/login/ui/login_screen.dart';
import 'package:flutter_ecommerce_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_ecommerce_app/features/register/logic/register_cubit.dart';
import 'package:flutter_ecommerce_app/features/register/ui/register_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (contex) => BlocProvider(
                create: (context) => LoginCubit(), child: const LoginScreen()));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => RegisterCubit(),
                child: const RegisterScreen()));

      default:
        return null;
    }
  }
}
