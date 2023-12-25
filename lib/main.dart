import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport/core/constance/app_functions.dart';
import 'package:x_sport/core/services/locator/service_locator.dart';
import 'package:x_sport/core/services/preload_images_service.dart';
import 'package:x_sport/presentation/screens/academy_screen.dart';
import 'package:x_sport/presentation/screens/home%20screens/main_screen.dart';
import 'package:x_sport/presentation/screens/profile_screen.dart';
import 'package:x_sport/presentation/screens/sign_in_screen.dart';
import 'package:x_sport/presentation/screens/sign_up_screen.dart';
import 'package:x_sport/presentation/screens/welcome_screen.dart';
import 'core/utils/enums.dart';
import 'presentation/controllers/user_bloc/user_bloc.dart';
import 'presentation/controllers/user_bloc/user_event.dart';
import 'presentation/controllers/user_bloc/user_state.dart';
import 'presentation/screens/route_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator.init();
  EasyLoadingInit.configLoading();
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    sl<ImagePreloadingService>().preloadImages(context);
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => sl<UserBloc>()
                  ..add(const CheckUserLoggedEvent())
                  ..add(GetUserInfoEvent())
                  ..add(const GetsportsEvent()),
              ),
            ],
            child: BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                final UserAuthState userState = state.userAuthState;

                return MaterialApp(
                  navigatorKey: navigatorKey,
                  builder: EasyLoading.init(),
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: Color(0xFFF6F7F9),
                      secondary: Color(0xFFF6F7F9),
                    ),
                    useMaterial3: true,
                  ),
                  // home: RouteScreen(),
                  home: AcademyScreen(),
                );
              },
            ),
          );
        });
  }
}
