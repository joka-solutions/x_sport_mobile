import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/utils/enums.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_bloc.dart';
import 'package:x_sport/presentation/controllers/user_bloc/user_state.dart';

import '../components/profile_screen_components/profile_main_components/profile_appbar_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_info_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_stats_component.dart';
import '../components/profile_screen_components/profile_main_components/profile_tabbar_component.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBarComponent(),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.userSignInState == RequestState.loaded) {
            final user = state.userSignIn.user;
            final acadmiesPoints = state.userSignIn.acadmiesPoints;
            final matchesCount = state.userSignIn.matchesCount;
            final followers = state.userSignIn.followers;
            final favoritSports = state.userSignIn.favoritSports;
            return SingleChildScrollView(
              child: Center(
                child: SizedBox(
                  width: 385.w,
                  child: Column(children: [
                    SizedBox(height: 12.w),
                    ProfileInfoComponent(
                      user: user,
                      points: acadmiesPoints,
                    ),
                    ProfileStatsComponent(
                      followers: followers,
                      matchesCount: matchesCount,
                    ),
                    ProfileTabBarComponent(
                      favoritSports: favoritSports,
                    ),
                  ]),
                ),
              ),
            );
          } else if (state.userSignInState == RequestState.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
