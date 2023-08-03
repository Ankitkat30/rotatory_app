import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rotatory_app/core/routes.dart';
import 'package:rotatory_app/features/home/presentations/home_navbar.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_cubit.dart';


void main() {
   WidgetsFlutterBinding.ensureInitialized();
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
          BlocProvider(create: (context) => UserCubit()),
      ],
      child: ScreenUtilInit(
          builder: (context, chid) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(useMaterial3: true),
              navigatorKey: Routes.navigatorKey,
              onGenerateRoute: Routes.onGenerateRoute,
              //home: MyHomePage(),
              initialRoute: Screens.login
              ),
          designSize: const Size(398, 844)),
    );
  }
}
