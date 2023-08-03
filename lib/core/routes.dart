import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:rotatory_app/features/home/presentations/home_navbar.dart';
import 'package:rotatory_app/features/home/presentations/home_screen.dart';
import 'package:rotatory_app/features/login/logic/provider/login_provider.dart';
import 'package:rotatory_app/features/login/presntation/login_screen.dart';
import 'package:rotatory_app/features/welcome/presentation/splash_screen.dart';

/// All of the screens in the app will be added here for reference
class Screens {
  static const splash = "splash";
  static const welcome = "welcome";
  static const home = "home";
    static const myhome = "myhome";

  static const login = "login";
  static const signUp = "signup";
}

class Routes {
  /// Global NavigatorKey to be used inside the MaterialApp
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Implementation of the onGenerateRoute function inside the MaterialApp
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Screens.splash:
        return CupertinoPageRoute(builder: (context) => const SplashScreen());

      case Screens.login:
        return CupertinoPageRoute(
            builder: (context) => ChangeNotifierProvider(
                  create: (context) => LoginProvider(context),
                  child: const LoginScreen(),
                ));

      case Screens.home:
        return CupertinoPageRoute(builder: (context) => const HomeScreen());
            case Screens.myhome:
        return CupertinoPageRoute(builder: (context) =>  MyHomePage());
      
      default:
        return null;
    }
  }

  /// Returns the current BuildContext at any point in the app
  static BuildContext get currentContext => navigatorKey.currentContext!;

  /// Implementation of Navigator.pushNamed() function
  static void goTo(String route, {Object? arguments}) {
    Navigator.pushNamed(currentContext, route, arguments: arguments);
  }

  /// Implementation of Navigator.pushReplacementNamed() function
  static void goToReplacement(String route, {Object? arguments}) {
    Navigator.pushReplacementNamed(currentContext, route, arguments: arguments);
  }

  /// Implementation of Navigator.pushReplacementNamed() function
  static void closeAllAndGoTo(String route, {Object? arguments}) {
    Navigator.popUntil(currentContext, (route) => route.isFirst);
    Navigator.pushReplacementNamed(currentContext, route, arguments: arguments);
  }

  /// Implementation of Navigator.pop() function
  static void goBack() {
    Navigator.pop(currentContext);
  }
}
