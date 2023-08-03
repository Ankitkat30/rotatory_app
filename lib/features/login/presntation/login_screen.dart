import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rotatory_app/core/routes.dart';
import 'package:rotatory_app/features/login/data/repository/login_reposiroty.dart';
import 'package:rotatory_app/features/login/logic/provider/login_provider.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_cubit.dart';
import 'package:rotatory_app/features/login/logic/user_cubit/user_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserRepository userRepository = UserRepository();

  // ...
Future<void> _generateOTP(String phoneNumber) async {
  try {
    final otp = await userRepository.generateOtp(phone: phoneNumber);

    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(otp), // Use the OTP directly as the title
      ),
    );
  } catch (e) {
    // Handle any exceptions that may occur during the OTP generation
    print('OTP generation failed: $e');
  }
}


  Future<void> _showForgetPinDialog(BuildContext context) async {
    final provider = Provider.of<LoginProvider>(context, listen: false);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/rid_with_logo.png', // Replace with your SVG image path
              fit: BoxFit.contain,
              width: 80,
              height: 80,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              prefixIcon: Icons.phone,
              hintText: "Primary Contact Number",
              controller: provider.phoneController,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                // Your logic to generate OTP
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    _generateOTP(provider.phoneController.text);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: Colors.blue)),
                    child: Text(
                      'Generate OTP',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UserLoggedInState) {
          Routes.goTo(Screens.myhome);
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/login_logo.png',
                    fit: BoxFit.contain,
                    height: 230,
                    width: 230,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomTextField(
                  prefixIcon: Icons.phone,
                  hintText: "Primary Contact Number",
                  controller: provider.phoneController,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  prefixIcon: Icons.lock,
                  hintText: "Pin",
                  controller: provider.passwordController,
                  obscureText: true,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () async {
                      _showForgetPinDialog(context);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Forget Pin?",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 18.h,
                ),
                LoginButton(text: "Login", onPressed: provider.logIn),
                SizedBox(
                  height: 30.h,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New User ? ",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "SignUp",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    required this.prefixIcon,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          filled: false,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          // Set the text color of the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0, // Set the border radius of the button
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15.0, // Set padding for the button
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
