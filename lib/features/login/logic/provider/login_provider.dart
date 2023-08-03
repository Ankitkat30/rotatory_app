import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_cubit.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_state.dart';

class LoginProvider with ChangeNotifier {
  final BuildContext context;
  LoginProvider(this.context) {
    _listenToUserCubit();
  }
  bool isOtoGenerated = false;
  bool isLoading = false;
  String error = "";

  final phoneController = TextEditingController();
  final pinController = TextEditingController();
  final confirmPinController = TextEditingController();
  final otpController = TextEditingController();
  final passwordController = TextEditingController();
  final otpGenController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  StreamSubscription? _userSubscription;

  void _listenToUserCubit() {
    _userSubscription =
        BlocProvider.of<UserCubit>(context).stream.listen((userState) {
      if (userState is UserLoadingState) {
        isLoading = true;
        error = "";
        notifyListeners();
      } else if (userState is UserErrorState) {
        isLoading = false;
        error = userState.message;
        _showSnackbar(userState.message); // Show the Snackbar with the error message
        notifyListeners();
      } else {
        isLoading = false;
        error = "";
        notifyListeners();
      }
    });
  }

  void _showSnackbar(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3), // Set the duration for how long the Snackbar should be visible
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void logIn() async {
    //if(!formKey.currentState!.validate()) return;

    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();

    BlocProvider.of<UserCubit>(context)
        .signIn(phone: phone, password: password);
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }
}
