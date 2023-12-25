import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_event.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_state.dart';
import 'package:x_sport/presentation/screens/home%20screens/main_screen.dart';
import 'package:x_sport/presentation/screens/sign_in_screen.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      if (state.userAuthState == UserAuthState.loggedIn) {
        return MainScreen();
      } else if (state.userAuthState == UserAuthState.guest) {
        return SignInScreen();
      } else {
        return Center();
      }
    });
  }
}
